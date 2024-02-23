###########
# VonixOS #
#########################
# VonixOS Installer ISO # 
#########################
{ pkgs, config, ... }:

{
 imports = [
   <nixpkgs/nixos/modules/installer/cd-dvd/installation-cd-minimal.nix>
 ];

 nix.settings.experimental-features = [ "nix-command" "flakes" ];

 environment.systemPackages = let
  fetch = pkgs.writeScriptBin "fetch" ''
     curl https://raw.githubusercontent.com/Vonixxx/VonixOS-Install/master/Script/Main.hs -o ./Main.hs &&
     curl https://raw.githubusercontent.com/Vonixxx/VonixOS-Install/master/Script/Installation.hs -o ./Installation.hs &&
     curl https://raw.githubusercontent.com/Vonixxx/VonixOS-Install/master/Script/Partitioning.hs -o ./Partitioning.hs &&
     sudo runhaskell ./Main.hs
  '';
 in [
   fetch
   pkgs.ghc
   pkgs.curl
 ];
}
