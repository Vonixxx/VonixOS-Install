module Variables where

output          = " -o "
impure          = " --impure "
hide            = " &> /dev/null "
flakeUpdate     = " flake update "
eraseMode       = " -- --mode disko "
reboot          = " sleep 5 && reboot "
diskSetupSource = " /tmp/partitioning.nix "
vonixOS         = " github:Vonixxx/VonixOS"
disko           = " github:nix-community/disko "
options         = " --no-write-lock-file --flake "
diskSetupSda    = " https://raw.githubusercontent.com/Vonixxx/VonixOS/master/system/configuration/disk/sda.nix "
diskSetupNvme   = " https://raw.githubusercontent.com/Vonixxx/VonixOS/master/system/configuration/disk/nvme.nix "
