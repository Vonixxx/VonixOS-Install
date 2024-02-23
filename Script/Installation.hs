module Installation where

import System.Process (callProcess)

repository = "'github:Vonixxx/VonixOS'"
user       = "'github:Vonixxx/VonixOS#vonix-desktop'"

installation = do
 _ <- callProcess "cd" [ "/mnt" ]

 _ <- callProcess "nix" [ "flake"
                   , "update"
                   , repository 
                   , "&&" 
                   , "nixos-install" 
                   , "--no-write-lock-file" 
                   , "--flake" 
                   , user 
                   , "--impure" ]

 putStrLn "Flake Installation - Successful"
