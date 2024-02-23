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
     mkdir ./Script
     curl https://raw.githubusercontent.com/Vonixxx/VonixOS-Install/master/Script/Main.hs         -o ./Script/Main.hs         &&
     curl https://raw.githubusercontent.com/Vonixxx/VonixOS-Install/master/Script/Installation.hs -o ./Script/Installation.hs &&
     curl https://raw.githubusercontent.com/Vonixxx/VonixOS-Install/master/Script/Partitioning.hs -o ./Script/Partitioning.hs &&
     sudo runhaskell ./Script/Main.hs
  '';
 in [
   start
   pkgs.ghc
   pkgs.curl
 ];
}
