module Installation where

import System.Process (callProcess)

repository = "'github:Vonixxx/VonixOS'"
user       = "'github:Vonixxx/VonixOS#vonix-desktop'"

installation = do
 callProcess "cd" [ "/mnt" ]

 callProcess "nix" [ "flake"
                   , "update"
                   , repository 
                   , "&&" 
                   , "nixos-install" 
                   , "--no-write-lock-file" 
                   , "--flake" 
                   , user 
                   , "--impure" ]

 callProcess "reboot" []

 putStrLn "Flake Installation - Successful"
