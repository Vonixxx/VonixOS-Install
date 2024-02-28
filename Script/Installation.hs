module Installation where

import Variables
import System.Process   ( callCommand )

installation = do
 putStrLn "Updating Flake..."

 callCommand $ "cd /mnt && nix flake update" 
               ++ linkVonixOS
               ++ hide

 putStrLn "Updating Flake - Successful"

 --------------------------------------

 putStr "Name (Format: Abraham Lincoln --> l.abraham): "

 user <- getLine

 ---------------

 putStrLn "Installing System..."

 callCommand $ "nixos-install --no-write-lock-file --flake"
               ++ linkVonixOS
               ++ "#"
               ++ user
               ++ impure

 putStrLn "System Installation - Successful"
