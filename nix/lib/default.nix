{
  config,
  pkgs,
  lib,
}:
# Note that we use the term config in place of style/scheme/colors file because some app templates generate all encompassing configuration files.
let
  cfg.home = config.home.homeDirectory;
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
    configs =
      lib.map (scheme: mkConfigFromTemplate scheme target.value.templateSrc target.value.templateName) (config.hm.tintednix.base16schemes);
    schemeFilesList =
      if config.hm.tintednix.targets.${target.name}.live.enable
      then
        lib.map (config: {
          file."${target.value.path}/color-schemes/${config.schemeName}.${target.value.schemeExtension}".source = config.generatedConfig;
        })
        configs
      else [];

    defaultSchemeFile = [
      {
        file."${target.value.path}/${target.value.schemeFilename}.${target.value.schemeExtension}" = let
          defaultConfig = let
            defaultScheme = lib.head (lib.filter (scheme: (scheme.name == config.hm.tintednix.defaultScheme)) config.hm.tintednix.base16schemes);
          in
            mkConfigFromTemplate defaultScheme target.value.templateSrc target.value.templateName;
        in {
          source = defaultConfig.generatedConfig;
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
          (lib.mkBefore ''
            cp -rf ${cfg.home}/${target.path}/color-schemes/"$arg2".${target.schemeExtension} ${cfg.home}/${target.path}/${target.schemeFilename}.${target.schemeExtension}
          '')
          (
            lib.mkAfter ''${target.live.hooks.hotReload}''
          )
        ]
      else '''') (lib.attrValues targets);
}
