# TintedNix

TintedNix is a configuration management tool designed to handle color schemes for various applications. It provides an easy way to manage and switch between different color schemes.

## Features

- Supports all Base16 color schemes.
- Allows live switching of color schemes via a shortcut.
- Flexible configuration options for target applications.
TODO: Provides an option for generating Hyprland shortcuts to switch color scheme.
TODO: Provides an option to enable a Walker plugin which lists and switches color schemes.

## Installation

To install TintedNix, add this the repo to your inputs and import the home-manager module:

```nix
{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    .
    .
    .
    tintednix.url = "github:BBFifield/tintednix";
  };
}
```

```nix
{
  # NixOS system-wide home-manager configuration
  home-manager.sharedModules = [
    inputs.sops-nix.homeManagerModules.sops
  ];
}
```

```nix
{
  # Configuration via standalone home-manager
  imports = [
    inputs.sops-nix.homeManagerModules.sops
  ];
}
```

## Usage

Here's an example I've pulled from my own home-manager configuration inside github:BBFifield/nixos-config.

```nix
tintednix = {
    enable = true;
    enabledSchemes = with pkgs.base16; [catppuccin-frappe catppuccin-latte catppuccin-macchiato catppuccin-mocha dracula gruvbox-dark-hard];
    defaultScheme = "catppuccin-mocha";
    targets = {
      firefox = {
        enable = true;
        live.enable = true;
        templateSrc = {
          url = "https://github.com/BBFifield/firefox-native-base16.git";
          rev = "9f72a3caa05901f90849ed32da5c9e489b10f679";
          ref = "master";
        };
        path = ".mozilla";
        schemeExtension = "toml";
      };
      hyprland = {
        enable = true;
        live = {
          enable = true;
          hooks.hotReload = ''hyprctl reload'';
        };
        templateSrc = {
          url = "https://github.com/kirasok/base16-hyprland.git";
          rev = "2b66f94aaf45f5e03f588272dde7177552835b3b";
          ref = "main";
        };
        templateName = "colors";
        path = ".config/hypr";
        schemeExtension = "conf";
      };
      qutebrowser = {
        enable = true;
        live.enable = true;
        templateSrc = {
          url = "https://github.com/tinted-theming/base16-qutebrowser.git";
          rev = "6253558595c15c29689b4343de6303f6743f5831";
          ref = "main";
        };
        schemeFilename = "colors";
        path = ".config/qutebrowser";
        schemeExtension = "py";
      };
      alacritty = {
        enable = true;
        live.enable = true;
        templateSrc = {
          url = "https://github.com/aarowill/base16-alacritty.git";
          rev = "c95c200b3af739708455a03b5d185d3d2d263c6e";
          ref = "master";
        };
        templateName = "default-256";
        path = ".config/alacritty";
        schemeExtension = "toml";
      };
      ironbar = {
        enable = true;
        live = {
          enable = true;
          hooks = {
            hotReload = ''
              ironbar load-css "$directory/ironbar/style.css"
              ironbar var set color_scheme "$arg2"
              ironbar var set base00 "$($tintednix get base00)"
              ironbar var set base01 "$($tintednix get base01)"
              ironbar var set base02 "$($tintednix get base02)"
              ironbar var set base03 "$($tintednix get base03)"
              ironbar var set base04 "$($tintednix get base04)"
              ironbar var set base05 "$($tintednix get base05)"
              ironbar var set base06 "$($tintednix get base06)"
              ironbar var set base07 "$($tintednix get base07)"
              ironbar var set base08 "$($tintednix get base08)"
              ironbar var set base09 "$($tintednix get base09)"
              ironbar var set base0A "$($tintednix get base0A)"
              ironbar var set base0B "$($tintednix get base0B)"
              ironbar var set base0C "$($tintednix get base0C)"
              ironbar var set base0D "$($tintednix get base0D)"
              ironbar var set base0E "$($tintednix get base0E)"
              ironbar var set base0F "$($tintednix get base0F)"
            '';
            onActivation = ''
              ${pkgs.bash}/bin/bash ${(import ../../features/home-manager/programs/bars/ironbar/postStart.nix {inherit config pkgs;}).postStart}/bin/ironbar_post_start
              ${config.programs.ironbar.package}/bin/ironbar load-css "/home/$(whoami)/.config/ironbar/style.css"
            '';
          };
        };
        templateSrc = {
          url = "https://github.com/tinted-theming/base16-waybar.git";
          rev = "26d41f3550da17ebdd14b6b2bc4fdf86c543735e";
          ref = "main";
        };
        path = ".config/ironbar";
        schemeExtension = "css";
      };
      walker = {
        enable = true;
        live = {
          enable = true;
        };
        templateSrc = {
          url = "https://github.com/samme/base16-styles.git";
          rev = "8db4f00ca9e5575ba52d98a204ee44a53e13d546";
          ref = "master";
        };
        templateName = "css-variables";

        path = ".config/walker/themes";
        schemeExtension = "css";
      };
      swaync = {
        enable = true;
        live = {
          enable = true;
          hooks = {
            hotReload = ''
              swaync load-css "$directory/swaync/style.css"
            '';
            onActivation = ''
              ${pkgs.swaync}/bin/swaync -s "/home/$(whoami)/.config/swaync/style.css"
            '';
          };
        };
        templateSrc = {
          url = "https://github.com/tinted-theming/base16-waybar.git";
          rev = "26d41f3550da17ebdd14b6b2bc4fdf86c543735e";
          ref = "main";
        };
        path = ".config/swaync";
        schemeExtension = "css";
      };
      shell = {
        enable = true;
        live = {
          enable = true;
          hooks.hotReload = "sh ~/.config/shell/colors.sh";
        };
        templateSrc = {
          url = "https://github.com/tinted-theming/tinted-shell.git";
          rev = "60c80f53cd3d97c25eb0580e40f0b9de84dac55f";
          ref = "main";
        };
        templateName = "base16";
        path = ".config/shell";
        schemeExtension = "sh";
      };
    };
  };
```
