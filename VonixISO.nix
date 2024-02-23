###########
# VonixOS #
#########################
# VonixOS Installer ISO # 
#########################
{ pkgs, ... }:

{
 nix.settings.experimental-features = [ "nix-command" "flakes" ];
 imports                            = [ <nixpkgs/nixos/modules/installer/cd-dvd/installation-cd-minimal.nix> ];

 environment.systemPackages = let
  start = pkgs.writeScriptBin "start" ''
     curl https://raw.githubusercontent.com/Vonixxx/VonixOS-Install/master/Script/Main.hs         -o ./Main.hs         &&
     curl https://raw.githubusercontent.com/Vonixxx/VonixOS-Install/master/Script/Installation.hs -o ./Installation.hs &&
     curl https://raw.githubusercontent.com/Vonixxx/VonixOS-Install/master/Script/Partitioning.hs -o ./Partitioning.hs &&
     sudo runhaskell ./Main.hs
  '';
 in [
   start
   pkgs.ghc
   pkgs.curl
 ];
}
