{
  config,
  pkgs,
  lib,
}:
# Note that we use the term config in place of style/scheme/colors file because some app templates generate all encompassing configuration files.
let
  cfg.home = config.home.homeDirectory;

  compileSass = name: generatedConfig:
    pkgs.runCommand name {nativeBuildInputs = with pkgs; [dart-sass jq];}
    ''
      #!/usr/bin/env bash
      mkdir -p $out
      cat > "$out/stylePre.scss" <<'EOF'
      ${builtins.readFile generatedConfig}
      EOF
      sass "$out/stylePre.scss" "$out/stylePost.css"
    '';
in rec {
  # This just generates an attribute set containing the scheme name and affiliated config file contents from a provided template.
  mkConfigFromTemplate = scheme: templateSrc: templateName: let
    schemeAttrs = scheme.value;
  in {
    schemeName = scheme.name;
    generatedConfig =
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

  # This takes a target (app specific configuration for generating config/scheme files) and creates its config files before putting them in the destination directory .
  mkTargetFiles = target: let
    schemeExtension =
      if target.value.schemeExtension == "scss"
      then "css"
      else target.value.schemeExtension;
    configs =
      lib.map (scheme: mkConfigFromTemplate scheme target.value.templateSrc target.value.templateName) (config.hm.tintednix.base16schemes);
    schemeFilesList =
      if config.hm.tintednix.targets.${target.name}.live.enable
      then
        lib.map (config: let
          generatedConfig =
            if target.value.schemeExtension == "scss"
            then "${compileSass config.schemeName config.generatedConfig}/stylePost.css"
            else config.generatedConfig;
        in {
          file."${target.value.path}/color-schemes/${config.schemeName}.${schemeExtension}".source =
            generatedConfig;
        })
        configs
      else [];

    defaultSchemeFile = [
      {
        file."${target.value.path}/${target.value.schemeFilename}.${schemeExtension}" = let
          defaultConfig = let
            defaultScheme = lib.head (lib.filter (scheme: (scheme.name == config.hm.tintednix.defaultScheme)) config.hm.tintednix.base16schemes);
          in
            mkConfigFromTemplate defaultScheme target.value.templateSrc target.value.templateName;
        in {
          source = let
            generatedConfig =
              if target.value.schemeExtension == "scss"
              then "${compileSass defaultConfig.schemeName defaultConfig.generatedConfig}/stylePost.css"
              else defaultConfig.generatedConfig;
          in
            generatedConfig;
          onChange = target.value.live.hooks.onActivation;
        };
      }
    ];
  in
    lib.mkMerge [(lib.foldl' (acc: item: {file = acc.file // item.file;}) {file = {};} (schemeFilesList ++ defaultSchemeFile))];

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
              cp -rf ${cfg.home}/${target.path}/color-schemes/"$arg2".css ${cfg.home}/${target.path}/${target.schemeFilename}.css
            ''
            else ''
              cp -rf ${cfg.home}/${target.path}/color-schemes/"$arg2".${target.schemeExtension} ${cfg.home}/${target.path}/${target.schemeFilename}.${target.schemeExtension}
            ''
          ))
          (
            lib.mkAfter ''${target.live.hooks.hotReload}''
          )
        ]
      else '''') (lib.attrValues targets);
}
