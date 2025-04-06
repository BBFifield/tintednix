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
    nixpkgs,
    flake-parts,
    self,
    ...
  } @ inputs:
    flake-parts.lib.mkFlake {inherit inputs;} {
      systems = [
        "aarch64-linux"
        "x86_64-linux"
      ];
      perSystem = {pkgs, ...}: {
        formatter = pkgs.alejandra;
      };

      flake = {
        overlays.default = final: prev: {
          base16 = final.callPackage ./pkgs/base16/default.nix {};
        };
        packages.default = {pkgs, ...}: pkgs.callPackage ./pkgs/base16/default.nix {};
        homeManagerModules.default = import ./nix/hm-module.nix inputs;
      };
    };
}
