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
     curl https://raw.githubusercontent.com/Vonixxx/VonixOS-Install/master/Main.hs &&
     curl https://raw.githubusercontent.com/Vonixxx/VonixOS-Install/master/Installation.hs &&
     curl https://raw.githubusercontent.com/Vonixxx/VonixOS-Install/master/Partitioning.hs
  '';
 in [
   fetch
   pkgs.ghc
   pkgs.curl
 ];
}
