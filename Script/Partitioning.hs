module Partitioning where

import System.Process (callProcess)

directory  = "/tmp/partitioning.nix"
repository = "github:nix-community/disko"
link       = "https://raw.githubusercontent.com/Vonixxx/VonixOS/master/system/configuration/partitioning/default.nix"

partitioning = do
 _ <- callProcess "sudo" [ "su" ]

 _ <- callProcess "curl" [ link
                         , "-o"
                         , directory ]

 _ <- callProcess "nix" [ "run"
                        , repository
                        , "--"
                        , "--mode"
                        , "disko"
                        , directory ]
 
 _ <- callProcess "mount" [ "|"
                          , "grep"
                          , "/mnt" ]

 putStrLn "Partitioning - Successful"
