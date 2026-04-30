{ pkgs, ... }:

{
    home.sessionVariables = {
        NIX_LD_LIBRARY_PATH = with pkgs; lib.makeLibraryPath [
          # 1. Absolut notwendige Standard-Basics
          stdenv.cc.cc
          zlib
          fuse3
          icu
          nss
          openssl
          curl
          expat
      
          # 2. Spezifisch für C++ / Grafik-Entwicklung (wegen deinem SDL3 Code)
          # Diese sind wichtig, damit clangd und die kompilierten Binaries laufen
          libGL
          libgcc
          glibc
          libxcrypt
      
          # 3. GUI / Wayland / X11 Bibliotheken (für SDL3 & Tools)
          xorg.libX11
          xorg.libXcursor
          xorg.libXext
          xorg.libXfixes
          xorg.libXi
          xorg.libXrender
          libxkbcommon
          wayland
        ];
      };
  }
