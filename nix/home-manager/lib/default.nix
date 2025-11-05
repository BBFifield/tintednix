{
  config,
  pkgs,
  lib,
}:
# Note that we use the term config in place of style/scheme/colors file because some app templates generate all encompassing configuration files.
let
  cfg.home = config.home.homeDirectory;

  compileSass = name: generatedFile:
    pkgs.runCommand name {nativeBuildInputs = with pkgs; [dart-sass jq];}
    ''
      #!/usr/bin/env bash
      sass ${generatedFile} "$out/style.css"
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
      then "${compileSass scheme.name cfg.generatedFile}/style.css"
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
      if config.hm.tintednix.targets.${target.name}.live.enable
      then
        lib.map (
          scheme: let
            generatedFile = mkTargetFile scheme target.value.schemeExtension target.value.templateSrc target.value.templateName;
          in {
            file."${target.value.path}/color-schemes/${scheme.name}.${schemeExtension}".source = generatedFile;
          }
        )
        config.hm.tintednix.base16schemes
      else [];

    defaultSchemeFile = [
      {
        file."${target.value.path}/${target.value.schemeFilename}.${schemeExtension}" = let
          defaultScheme = lib.head (lib.filter (scheme: (scheme.name == config.hm.tintednix.defaultSchemeName)) config.hm.tintednix.base16schemes);
        in {
          source = let
            generatedFile = mkTargetFile defaultScheme target.value.schemeExtension target.value.templateSrc target.value.templateName;
          in
            generatedFile;
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
              cp -rf ${cfg.home}/${target.path}/color-schemes/"$_theme".css ${cfg.home}/${target.path}/${target.schemeFilename}.css
            ''
            else ''
              cp -rf ${cfg.home}/${target.path}/color-schemes/"$_theme".${target.schemeExtension} ${cfg.home}/${target.path}/${target.schemeFilename}.${target.schemeExtension}
            ''
          ))
          (
            lib.mkAfter ''${target.live.hooks.hotReload}''
          )
        ]
      else '''') (lib.attrValues targets);
}
