{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    flake-parts = {
      url = "github:hercules-ci/flake-parts";
      inputs.nixpkgs-lib.follows = "nixpkgs";
    };
    base16-nix.url = "github:SenchoPens/base16.nix";
  };

  outputs = {
    self,
    nixpkgs,
    flake-parts,
    ...
  } @ inputs:
    flake-parts.lib.mkFlake {inherit inputs;} {
      systems = ["aarch64-linux" "x86_64-linux"];

      perSystem = {pkgs, ...}: {
        formatter = pkgs.alejandra;

        devShells = {
          default = pkgs.mkShell {
            buildInputs = with pkgs; [
              gtk4
              gst_all_1.gst-plugins-base
              gtk3
            ];
          };
          # Enter devshell like "nix develop .#buildCss"
          buildCss = pkgs.mkShell {
            buildInputs = with pkgs; [dart-sass];
            shellHook = ''
              source $PWD/build.sh
            '';
          };
        };
        packages.default = pkgs.callPackage ./pkgs/base16-schemes {};
      };
      flake = {
        overlays.default = final: prev: {
          base16 = final.callPackage ./pkgs/base16-schemes {};
        };
        homeManagerModules.default = import ./nix/home-manager/hm-module.nix inputs;
        nixosModules.default = import ./nix/nixos/nixos-module.nix inputs;
      };
    };
}
