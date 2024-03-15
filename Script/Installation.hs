module Installation where

import Variables
import Text.Printf ( printf )
import System.Process   ( callCommand )

installation = do
 putStrLn "Updating Flake..."

 callCommand $ printf "cd /mnt && nix flake update %a %b" 
               linkVonixOS
               hide

 putStrLn "Updating Flake - Successful"
 --------------------------------------
 putStrLn "(Format: Richard Nixon --> n.richard)"
 putStr   "Name: "

 user <- getLine
 ---------------
 putStrLn "Installing System..."

 callCommand $ printf "nixos-install --no-write-lock-file --flake %a #%b --impure"
                      linkVonixOS
                      user

 putStrLn "System Installation - Successful"
