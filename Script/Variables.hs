module Variables where

output       = " -o "
impure       = " --impure "
hide         = " &> /dev/null "
flakeUpdate  = " flake update "
eraseMode    = " -- --mode disko "
reboot       = " sleep 5 && reboot "
tmpDirectory = " /tmp/partitioning.nix "
vonixOS      = " github:Vonixxx/VonixOS"
disko        = " github:nix-community/disko "
options      = " --no-write-lock-file --flake "
diskSetup    = " https://raw.githubusercontent.com/Vonixxx/VonixOS/master/system/configuration/partitioning/default.nix "
