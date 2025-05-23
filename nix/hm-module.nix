inputs: {
  config,
  pkgs,
  lib,
  ...
}: let
  base16-nix = pkgs.callPackage inputs.base16-nix.lib {};

  cfg = config.hm.tintednix;
  enabledSchemes = cfg.enabledSchemes;

  this.lib = import ./lib {inherit config pkgs lib;};

  base16schemes = let
    yamlFiles =
      lib.map (package: let
        schemeName =
          if enabledSchemes == "all"
          then package.name
          else lib.getName package;
        path =
          if enabledSchemes == "all"
          then "${package.value}/${schemeName}.yaml"
          else "${package}/${schemeName}.yaml";
      in
        path)
      (
        if enabledSchemes == "all"
        then lib.filter (packageAttr: packageAttr.name != "override" && packageAttr.name != "overrideDerivation") (lib.attrsToList pkgs.base16)
        else enabledSchemes
      );
    schemeList =
      lib.map (
        filePath: let
          schemeAttrs = base16-nix.mkSchemeAttrs filePath;
          slug = schemeAttrs.slug;
        in {
          name = slug;
          value = schemeAttrs;
        }
      )
      yamlFiles;
  in
    schemeList;

  commonColors = let
    schemeList =
      lib.map (schemeAttrs: {
        name = schemeAttrs.name;
        value = {
          variant = schemeAttrs.value.scheme-variant;
          colors = {
            base00 = schemeAttrs.value.base00;
            base01 = schemeAttrs.value.base01;
            base02 = schemeAttrs.value.base02;
            base03 = schemeAttrs.value.base03;
            base04 = schemeAttrs.value.base04;
            base05 = schemeAttrs.value.base05;
            base06 = schemeAttrs.value.base06;
            base07 = schemeAttrs.value.base07;
            base08 = schemeAttrs.value.base08;
            base09 = schemeAttrs.value.base09;
            base0A = schemeAttrs.value.base0A;
            base0B = schemeAttrs.value.base0B;
            base0C = schemeAttrs.value.base0C;
            base0D = schemeAttrs.value.base0D;
            base0E = schemeAttrs.value.base0E;
            base0F = schemeAttrs.value.base0F;
          };
        };
      })
      base16schemes;
  in
    lib.listToAttrs schemeList;

  mkGithubType = lib.mkOptionType {
    name = "mkGitHubType";
    check = src:
      if (!(lib.isPath src))
      then (builtins.tryEval (builtins.fetchGit src)).success
      else false;
  };
in {
  options.hm.tintednix = with lib; {
    enable = lib.mkEnableOption "Enable tintednix.";
    enabledSchemes = lib.mkOption {
      type = with types; either (enum ["all"]) (listOf package);
      default = with pkgs.base16; [catppuccin-frappe];
    };
    targets = lib.mkOption {
      type = lib.types.attrsOf (lib.types.submodule {
        options = {
          enable = lib.mkEnableOption "Enable configuration of the target application.";
          live = lib.mkOption {
            type = (import ./submodules {inherit lib;}).live;
          };
          templateSrc = lib.mkOption {
            type = with types; either mkGithubType path;
            example = {
              url = "https://github.com/tinted-theming/base16-qutebrowser.git";
              rev = "6253558595c15c29689b4343de6303f6743f5831";
              ref = "main";
            };
            description = "Where the template should be fetched from. Either a git repository or filesystem path.";
          };
          templateName = lib.mkOption {
            type = lib.types.str;
            default = "default";
            example = "colors";
            description = "Name of the template that should be used.";
          };
          path = lib.mkOption {
            type = lib.types.str;
            default = "";
            example = "./mozilla";
            description = "Path where all the color scheme files should be stored starting from your home directory.";
          };
          schemeFilename = lib.mkOption {
            type = lib.types.str;
            default = "colors";
            example = "colorVars";
            description = "What the root directory color scheme file name should be.";
          };
          schemeExtension = lib.mkOption {
            type = lib.types.str;
            default = "";
            example = "toml";
            description = "The extension of the color files";
          };
        };
      });
    };
    live = lib.mkOption {
      type = (import ./submodules {inherit lib;}).live;
      default = {
        enable = true;
      };
      description = ''Only the enable option is useful here from the module. Disables live switching of color schemes globally.'';
    };
    defaultScheme = lib.mkOption {
      type = lib.types.str;
      default = "catppuccin-frappe";
      description = ''The default color scheme to use. You can find a list of base16 color schemes at the tinted-theming/schemes github repository.'';
    };
    base16schemes = lib.mkOption {
      type = lib.types.listOf lib.types.attrs;
      default = base16schemes;
      example = lib.literalExample ''with pkgs.base16; [catppuccin-frappe catppuccin-latte catppuccin-macchiato catppuccin-mocha dracula gruvbox-dark-hard]'';
      description = "The base16 color scheme packages to install.";
    };
    commonColors = lib.mkOption {
      type = lib.types.attrs;
      default = commonColors;
      description = ''A convenience option for exporting the "commonColors" set.'';
    };
  };
  config = lib.mkIf (cfg.enable) (
    let
      targetFiles = lib.mkMerge (map this.lib.mkTargetFiles (lib.attrsToList cfg.targets));
      targetHooks = lib.mkMerge (this.lib.mkTargetHooks cfg.targets);

      scriptParts = lib.mkMerge [
        (lib.mkOrder 5
          ''
            #!/usr/bin/env bash
            arg1=$1
            directory=${config.home.homeDirectory}/.config
            arg2="$2"

            tintednix=/etc/profiles/per-user/$(whoami)/bin/tintednix

            if [[ $arg1 == "get" ]]; then
              grep "$arg2=" "$directory/tintednix/settings.txt" | cut -d '=' -f 2
            elif [[ $arg1 == "update" ]]; then
              # Clear the contents of the target file
              sed -i '1,$d' "$directory/tintednix/settings.txt"
              source_file_content=$(cat "$directory/tintednix/color-schemes/$arg2.txt")
              gawk -i inplace -v src="$source_file_content" '{ print } ENDFILE { print src }' "$directory/tintednix/settings.txt" || echo "Failed to update settings"
          '')
        (lib.mkOrder 2000
          ''
            fi
          '')
      ];
      targetHooks' = lib.mkMerge [targetHooks scriptParts];
    in
      lib.mkMerge [
        {
          home = targetFiles;
          xdg.configFile."tintednix/settings.txt".text = let
            bases = commonColors.${cfg.defaultScheme}.colors;
          in ''
            color_scheme=${cfg.defaultScheme}
            base00=#${bases.base00}
            base01=#${bases.base01}
            base02=#${bases.base02}
            base03=#${bases.base03}
            base04=#${bases.base04}
            base05=#${bases.base05}
            base06=#${bases.base06}
            base07=#${bases.base07}
            base08=#${bases.base08}
            base09=#${bases.base09}
            base0A=#${bases.base0A}
            base0B=#${bases.base0B}
            base0C=#${bases.base0C}
            base0D=#${bases.base0D}
            base0E=#${bases.base0E}
            base0F=#${bases.base0F}
          '';
        }
        {
          home = let
            schemeFilesList =
              lib.map (schemeAttrs: {
                file.".config/tintednix/color-schemes/${schemeAttrs.name}.txt".text = ''
                  color_scheme=${schemeAttrs.name}
                  base00=#${schemeAttrs.value.base00}
                  base01=#${schemeAttrs.value.base01}
                  base02=#${schemeAttrs.value.base02}
                  base03=#${schemeAttrs.value.base03}
                  base04=#${schemeAttrs.value.base04}
                  base05=#${schemeAttrs.value.base05}
                  base06=#${schemeAttrs.value.base06}
                  base07=#${schemeAttrs.value.base07}
                  base08=#${schemeAttrs.value.base08}
                  base09=#${schemeAttrs.value.base09}
                  base0A=#${schemeAttrs.value.base0A}
                  base0B=#${schemeAttrs.value.base0B}
                  base0C=#${schemeAttrs.value.base0C}
                  base0D=#${schemeAttrs.value.base0D}
                  base0E=#${schemeAttrs.value.base0E}
                  base0F=#${schemeAttrs.value.base0F}
                '';
              })
              base16schemes;
          in
            lib.mkMerge [(lib.foldl' (acc: item: {file = acc.file // item.file;}) {file = {};} schemeFilesList)];
        }
        {
          hm.tintednix.live.hooks.hotReload = targetHooks';
          home.packages = [
            (pkgs.writeShellApplication {
              name = "tintednix";
              runtimeInputs = with pkgs; [coreutils gnugrep gnused gawk];
              text = cfg.live.hooks.hotReload;
            })
          ];
        }
      ]
  );
}
