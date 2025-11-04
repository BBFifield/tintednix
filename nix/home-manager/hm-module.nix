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

  schemeCommonAttrs = let
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
    gtkTheme = lib.mkOption {
      type = types.submodule {
        options = {
          enable = lib.mkEnableOption "Install the base16-gtk theme package. The theme will use the default scheme's colors.";
          name = lib.mkOption {
            type = lib.types.str;
            default = "";
            description = ''Default is "" to avoid infinite recursion. Will be instantiated with the actual name in the module's configuration.'';
          };
          package = lib.mkOption {
            type = lib.types.nullOr lib.types.package;
            default = null;
            description = ''Default is null to avoid infinite recursion. Will be instantiated with the actual package in the module's configuration.'';
          };
          enableGimpTheme = lib.mkEnableOption "Install the associated gimp theme. Its purpose is to override gimp's internal styles declarations, which is only possible by defining the styles inside ~/.config/GIMP/3.0/gimp.css";
        };
      };
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
    defaultSchemeName = lib.mkOption {
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
    schemeVariantAndColors = lib.mkOption {
      type = lib.types.attrs;
      default = schemeCommonAttrs;
      description = ''A convenience option for exporting the "schemeCommonAttrs" set, which contains the variant name and base colors for each scheme.'';
    };
  };
  config = lib.mkIf (cfg.enable) (
    let
      targetFiles = lib.mkMerge (map this.lib.mkTargetFiles (lib.attrsToList cfg.targets));
      targetHooks = lib.mkMerge (this.lib.mkTargetHooks cfg.targets);

      scriptParts = import ./scriptParts.nix {inherit lib;};

      targetHooks' = lib.mkMerge [targetHooks scriptParts];

      package = {
        name = "base16-gtk";
        package = let
          defaultScheme = lib.head (lib.filter (scheme: (scheme.name == config.hm.tintednix.defaultSchemeName)) base16schemes);
          gtk3Colors = this.lib.mkTargetFile defaultScheme "scss" ../.. "gtk3";
          gtk4Colors = this.lib.mkTargetFile defaultScheme "scss" ../.. "gtk4";
        in
          (pkgs.callPackage ../../pkgs/themes {inherit gtk3Colors gtk4Colors;}).base16-gtk;
      };

      sassFile = import ./config/style.nix config pkgs;
      compiledSassFile =
        pkgs.runCommand "style_gimp" {nativeBuildInputs = with pkgs; [dart-sass jq];}
        ''
          #!/usr/bin/env bash
          mkdir -p $out
          cat > "$out/styleGimp.scss" <<'EOF'
          ${sassFile}
          EOF
          sass "$out/styleGimp.scss" "$out/.config/GIMP/3.0/gimp.css"
        '';
    in
      lib.mkMerge [
        {
          home = targetFiles;
          xdg.configFile."tintednix/settings.txt".text = let
            bases = schemeCommonAttrs.${cfg.defaultSchemeName}.colors;
          in ''
            color_scheme=${cfg.defaultSchemeName}
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
          hm.tintednix.gtkTheme = {
            name = package.name;
            package = package.package;
          };
          home.packages = [
            config.hm.tintednix.gtkTheme.package
          ];
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
        (
          lib.mkIf (cfg.gtkTheme.enable && cfg.enableGimpTheme) {
            home.packages = [compiledSassFile];
            xdg.configFile."GIMP.3.0/gimp.css".source = "${compiledSassFile}/.config/GIMP/3.0/gimp.css";
          }
        )
      ]
  );
}
