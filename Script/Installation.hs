module Installation where

import System.Process   ( callCommand )
import System.Directory ( setCurrentDirectory )

impure      = " --impure "
flakeUpdate = " flake update "
repository  = " github:Vonixxx/VonixOS "
options     = " --no-write-lock-file --flake "
user        = " github:Vonixxx/VonixOS#vonix-laptop "

installation = do
 setCurrentDirectory "/mnt"

 callCommand "nix" 
             ++ flakeUpdate
             ++ repository

 putStrLn "Updating Flake - Successful"

 callCommand "nixos-install"
             ++ options
             ++ user
             ++ impure

 putStrLn "Flake Installation - Successful"
