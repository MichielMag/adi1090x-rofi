{
  description = "A huge collection of Rofi based custom Applets, Launchers & Powermenus.";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, utils } @inputs:
    utils.lib.eachDefaultSystem (system:
      let
        pkgs = import nixpkgs { inherit system; };
      in
      {
        packages.default = pkgs.callPackage ./nix/default.nix { nixpkgs = pkgs; };
        formatter = nixpkgs.${system}.nixpkgs-fmt;
      });
}