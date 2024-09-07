{ lib, stdenv, nixpkgs, fetchurl }:
stdenv.mkDerivation (finalAttrs: {
    pname = "adi1090x-rofi";
    version = "0.0.1";

    xdg.configFile."rofi".source = nixpkgs.fetchFromGitHub {
        owner = "MichielMag";
        repo = "adi1090x-rofi";
        rev = "e71c14dc42c8dd182b32ff54b0526f01273d801e";
        sha256 = "0000000000000000000000000000000000000000000000000000";
    };

    meta = with lib; {
        description = "A huge collection of Rofi based custom Applets, Launchers & Powermenus.";
        downloadPage = "https://github.com/MichielMag/adi1090x-rofi";
        homepage = "https://github.com/adi1090x/rofi";
        license = licenses.gpl3;
        maintainers = with maintainers; [ adi1090x ];
    };
})