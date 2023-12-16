{
  description = "Source files for my blog";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = nixpkgs.legacyPackages.${system};

        haskellPackages = pkgs.haskellPackages;

        jailbreakUnbreak = pkg:
          pkgs.haskell.lib.doJailbreak (pkg.overrideAttrs (_: { meta = { }; }));

          packageName = "chaoszone";
      in rec {
        packages.${packageName} = import ./default.nix {inherit pkgs self;};

        defaultPackage = self.packages.${system}.${packageName};

        devShell = import ./shell.nix {inherit pkgs; chaoszone = defaultPackage;};
        #devShell = pkgs.mkShell {
        #  buildInputs = with haskellPackages; [
        #    haskell-language-server
        #    ghcid
        #    cabal-install
        #  ];
        #  nativeBuildInputs = with pkgs; [
        #    pkg-config
        #    glib
        #    freetype
        #    glew
        #    SDL2
        #  ];
        #  inputsFrom = builtins.attrValues self.packages.${system};
        #};
      });
}

