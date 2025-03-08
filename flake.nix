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
        homeManagerModules.default = import ./nix/hm-module.nix self;
      };
    };
}
