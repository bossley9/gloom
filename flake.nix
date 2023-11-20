{
  description = "test";

  inputs.nixpkgs.url = "github:NixOS/nixpkgs";

  outputs =
    { self, nixpkgs }:
    let
      system = "x86_64-linux";
      pkgs = import nixpkgs { inherit system; };
    in
    {
      packages.${system}.default = import ./site.nix {
        stdenv = pkgs.stdenv;
        inherit pkgs;
      };
    };
}
