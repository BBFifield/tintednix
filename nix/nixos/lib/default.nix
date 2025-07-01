{
  config,
  pkgs,
  lib,
}:
# Note that we use the term config in place of style/scheme/colors file because some app templates generate all encompassing configuration files.
let
  compileSass = name: generatedFile:
    pkgs.runCommand name {nativeBuildInputs = with pkgs; [dart-sass jq];}
    ''
      #!/usr/bin/env bash
      mkdir -p $out
      cat > "$out/stylePre.scss" <<'EOF'
      ${builtins.readFile generatedFile}
      EOF
      sass "$out/stylePre.scss" "$out/stylePost.css"
    '';
in rec {
  # This just generates an attribute set containing the scheme name and affiliated config file contents from a provided template.
  mkConfigFromTemplate = scheme: templateSrc: templateName: let
    schemeAttrs = scheme.value;
  in {
    schemeName = scheme.name;
    generatedFile =
      if !(lib.isPath templateSrc)
      then
        (schemeAttrs.__functor schemeAttrs) {
          templateRepo = builtins.fetchGit templateSrc;
          target = templateName;
        }
      # else null;
      else
        (schemeAttrs.__functor schemeAttrs) {
          templateRepo = templateSrc;
          target = templateName;
        };
  };

  mkTargetFile = scheme: fileExtension: templateSrc: templateName: let
    cfg = mkConfigFromTemplate scheme templateSrc templateName;
    generatedFile =
      if fileExtension == "scss"
      then "${compileSass scheme.name cfg.generatedFile}/stylePost.css"
      else cfg.generatedFile;
  in
    generatedFile;

  # This takes a target (app specific configuration for generating config/scheme files) and creates its config files before putting them in the destination directory .
  mkTargetFiles = target: let
    schemeExtension =
      if target.value.schemeExtension == "scss"
      then "css"
      else target.value.schemeExtension;

    schemeFilesList =
      if config.tintednix.targets.${target.name}.live.enable
      then
        lib.map (
          scheme: let
            generatedFile = mkTargetFile scheme target.value.schemeExtension target.value.templateSrc target.value.templateName;
          in {etc."${target.value.path}/color-schemes/${scheme.name}.${schemeExtension}".source = generatedFile;}
        )
        config.tintednix.base16schemes
      else [];

    defaultSchemeFile = [
      {
        etc."${target.value.path}/${target.value.schemeFilename}.${schemeExtension}" = let
          defaultScheme = lib.head (lib.filter (scheme: (scheme.name == config.tintednix.defaultSchemeName)) config.tintednix.base16schemes);
        in {
          source = let
            generatedFile = mkTargetFile defaultScheme target.value.schemeExtension target.value.templateSrc target.value.templateName;
          in
            generatedFile;
        };
      }
    ];
  in
    lib.mkMerge [(lib.foldl' (acc: item: {etc = acc.etc // item.etc;}) {etc = {};} (schemeFilesList ++ defaultSchemeFile))];

  # The commands executed for switching configs per app/target.
  mkTargetHooks = targets:
    lib.map
    (target:
      if target.live.enable
      then
        lib.mkMerge [
          (lib.mkBefore (
            if target.schemeExtension == "scss"
            then ''
              cp -rf /etc/${target.path}/color-schemes/"$scheme".css /etc/${target.path}/${target.schemeFilename}.css
            ''
            else ''
              cp -rf /etc/${target.path}/color-schemes/"$scheme".${target.schemeExtension} /etc/${target.path}/${target.schemeFilename}.${target.schemeExtension}
            ''
          ))
          (
            lib.mkAfter ''${target.live.hooks.hotReload}''
          )
        ]
      else '''') (lib.attrValues targets);
}
