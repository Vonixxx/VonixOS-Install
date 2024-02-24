module Variables where

output      = " -o "
hide        = " > /dev/null "
flakeUpdate = " flake update "
eraseMode   = " -- --mode disko "
reboot      = " sleep 5 && reboot "
directory   = " /tmp/partitioning.nix "
vonixOS     = " github:Vonixxx/VonixOS "
disko       = " github:nix-community/disko "
options     = " --no-write-lock-file --flake "
diskSetup   = " https://raw.githubusercontent.com/Vonixxx/VonixOS/master/system/configuration/partitioning/default.nix "
