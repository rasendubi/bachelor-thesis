let
  pkgs = import <nixpkgs> { };
  texlive = pkgs.texlive.combine {
    inherit (pkgs.texlive)
    scheme-full
    metafont
    collection-fontsrecommended
    collection-latexrecommended
    collection-fontsextra
    # acronym bigfoot xstring
    # titlesec
    # tocloft
    # tocbibind
    # collection-langcyrillic
    ;
  };
in rec {
  bachelor = pkgs.stdenv.mkDerivation rec {
    name = "bachelor-env";
    # src = ./init.tex;
    buildInputs = [
      texlive
      # (pkgs.texlive.combine {
      #   inherit (pkgs.texlive)
      #   scheme-full
      #   # extsizes
      #   # cyrillic
      #   # vmargin
      #   # metafont
      #   # acro translations cnltx pgfopts trimspaces
      #   # collection-latexrecommended
      #   # collection-fontsrecommended
      #   # collection-langcyrillic
      #   ;
      # })
    ];
    shellHook = ''
      export MT_TEXMFMAIN="${texlive}/share/texmf/"
    '';
  };
}
