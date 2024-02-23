module Partitioning where

import System.Process (callProcess)

directory  = "/tmp/partitioning.nix"
repository = "github:nix-community/disko"
link       = "https://raw.githubusercontent.com/Vonixxx/VonixOS/master/system/configuration/partitioning/default.nix"

partitioning = do
 callProcess "sudo" [ "su" ]

 callProcess "curl" [ link
                    , "-o"
                    , directory ]

 callProcess "nix" [ "run"
                   , repository
                   , "--"
                   , "--mode"
                   , "disko"
                   , directory ]
 
 callProcess "mount" [ "|"
                     , "grep"
                     , "/mnt "]

 putStrLn "Partitioning - Successful"
