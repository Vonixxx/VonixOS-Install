module Installation where

import Variables
import System.Process   ( callCommand )
import System.Directory ( setCurrentDirectory )

installation = do
 setCurrentDirectory "/mnt"

 callCommand $ "nix" 
               ++ flakeUpdate
               ++ vonixOS
               ++ hide

 putStrLn "Updating Flake - Successful"
 putStrLn "Name: (Example - John Doe --> #d.john)"

 user <- getLine

 callCommand $ "nixos-install"
               ++ options
               ++ vonixOS
               ++ user
               ++ impure
               ++ hide

 putStrLn "Flake Installation - Successful"
