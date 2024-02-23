module Partitioning where

import System.Process ( callProcess )

directory  = "/tmp/partitioning.nix"
repository = "github:nix-community/disko"
link       = "https://raw.githubusercontent.com/Vonixxx/VonixOS/master/system/configuration/partitioning/default.nix"

partitioning = do
 _ <- callProcess "curl" [ link
                         , "-o"
                         , directory 
                         , ">"
                         , "/dev/null" ]

 putStrLn "Acquiring Partitioning Module - Successful"

 _ <- callProcess "nix" [ "run"
                        , repository
                        , "--"
                        , "--mode"
                        , "disko"
                        , directory 
                        , ">"
                        , "/dev/null" ]

 putStrLn "Partitioning - Successful"
