module Partitioning where

import Variables
import System.Process ( callCommand )

partitioning = do
 putStrLn "Acquiring Partitioning Module..."

 callCommand $ "curl" 
               ++ linkDiskSetupNvme
               ++ " -o " 
               ++ " /tmp/partitioning.nix " 
               ++ hide

 putStrLn "Acquiring Partitioning Module - Successful"

 -----------------------------------------------------

 putStrLn "Partitioning..."

 callCommand $ "nix run" 
               ++ linkDisko 
               ++ " -- --mode disko "
               ++ " /tmp/partitioning.nix "
               ++ hide

 putStrLn "Partitioning - Successful"
