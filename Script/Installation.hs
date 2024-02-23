module Installation where

import System.Process   ( callProcess )
import System.Directory ( setCurrentDirectory )

repository = "github:Vonixxx/VonixOS"
user       = "github:Vonixxx/VonixOS#vonix-desktop"

installation = do
 setCurrentDirectory "/mnt"

 _ <- callProcess "nix" [ "flake"
                        , "update"
                        , repository
                        , ">" 
                        , "/dev/null" ]

 putStrLn "Updating Flake - Successful"

 _ <- callProcess "nixos-install" [ "--no-write-lock-file" 
                                  , "--flake" 
                                  , user 
                                  , "--impure" 
                                  , ">"
                                  , "/dev/null" ]

 putStrLn "Flake Installation - Successful"
