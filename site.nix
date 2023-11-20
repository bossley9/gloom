{ stdenv, pkgs, ... }:

stdenv.mkDerivation {
  name = "test";
  src = ./src;

  buildInputs = with pkgs; [ ];

  unpackPhase = "
    # ignore
  ";
  buildPhase = ''
    mkdir -p $out/bin
    cp $src/main.sh $out/bin/test
    chmod +x $out/bin/test
  '';
}
