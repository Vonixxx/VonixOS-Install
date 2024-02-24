module Installation where

import System.Process   ( callCommand )
import System.Directory ( setCurrentDirectory )

impure      = " --impure "
flakeUpdate = " flake update "
repository  = " github:Vonixxx/VonixOS "
options     = " --no-write-lock-file --flake "

installation = do
 setCurrentDirectory "/mnt"

 callCommand $ "nix" 
               ++ flakeUpdate
               ++ repository

 putStrLn "Updating Flake - Successful"

 putStrLn "Enter Name in the following way, John Doe --> #d.john"
 user <- getLine

 callCommand $ "nixos-install"
               ++ options
               ++ repository
               ++ user
               ++ impure

 putStrLn "Flake Installation - Successful"
