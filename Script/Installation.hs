module Installation where

import Variables
import System.Process   ( callCommand )
import System.Directory ( setCurrentDirectory )

installation = do
 putStrLn "Updating Flake..."

 callCommand $ "cd /mnt && nix flake update" 
               ++ linkVonixOS
               ++ hide

 putStrLn "Updating Flake - Successful"

 --------------------------------------

 putStr "Name (Format: John Doe --> #d.john): "

 user <- getLine

 ---------------

 putStrLn "Installing System..."

 callCommand $ "nixos-install --no-write-lock-file --flake"
               ++ linkVonixOS
               ++ user
               ++ impure

 putStrLn "Flake Installation - Successful"
