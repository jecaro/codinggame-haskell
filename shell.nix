{ pkgs ? import <nixpkgs> {} }:
let
  codinggame = import ./. { inherit pkgs; };
in
with pkgs;
mkShell {
  inputsFrom = [ codinggame.env ];
  buildInputs = [
    ghcid
    haskellPackages.cabal-install
    haskellPackages.haskell-language-server
    haskellPackages.hlint
    haskellPackages.implicit-hie
  ];
}
