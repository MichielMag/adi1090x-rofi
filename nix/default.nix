{ lib, stdenv, nixpkgs, fetchurl }:
stdenv.mkDerivation (finalAttrs: {
    pname = "adi1090x-rofi";
    version = "0.0.1";
    
    xdg.configFile."rofi".source = nixpkgs.fetchFromGitHub {
        owner = "MichielMag";
        repo = "adi1090x-rofi";
        rev = "ba970a1f494549c9a4e96b40fa16c74cfc56603f";
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