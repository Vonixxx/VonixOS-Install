module Installation where

import Variables
import System.Process   ( callCommand )
import System.Directory ( setCurrentDirectory )

installation = do
 setCurrentDirectory "/mnt"

 putStrLn "Updating Flake..."

 callCommand $ "nix" 
               ++ flakeUpdate
               ++ vonixOS
               ++ hide

 putStrLn "Updating Flake - Successful"

 putStr "Name: (Example - John Doe --> #d.john)"

 user <- getLine

 putStrLn "Installing System..."

 callCommand $ "nixos-install"
               ++ options
               ++ vonixOS
               ++ user
               ++ impure

 putStrLn "Flake Installation - Successful"
