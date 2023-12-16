{ pkgs ? import <nixpkgs> {}, chaoszone ? null}:

let
  chaoszone_cz = if isNull chaoszone
    then
      (import ./default.nix {inherit pkgs; packageName = "chaoszone";})
    else
      chaoszone;
  gitignore = dir: pkgs.nix-gitignore.gitignoreSource [] dir;
in
  pkgs.haskellPackages.shellFor {
    packages = p: [ chaoszone_cz ];
    withHoogle = true;
    buildInputs = with pkgs.haskellPackages; with pkgs; [
      haskell-language-server
      ghcid
      cabal-install
      vim
    ];
  }
