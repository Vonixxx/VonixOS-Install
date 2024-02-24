module Installation where

import Variables
import System.Process   ( callCommand )
import System.Directory ( setCurrentDirectory )

installation = do
 setCurrentDirectory "/mnt"

 callCommand $ "nix" 
               ++ flakeUpdate
               ++ vonixOS

 putStrLn "Updating Flake - Successful"
 putStrLn "Enter Name in the following way, John Doe --> #d.john"

 user <- getLine

 callCommand $ "nixos-install"
               ++ options
               ++ vonixOS
               ++ user

 putStrLn "Flake Installation - Successful"
