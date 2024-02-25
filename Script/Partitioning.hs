module Partitioning where

import Variables
import System.Process ( callCommand )

partitioning = do
 putStrLn "Acquiring Partitioning Module..."

 callCommand $ "curl" 
               ++ diskSetupNvme
               ++ output 
               ++ diskSetupSource 
               ++ hide

 putStrLn "Acquiring Partitioning Module - Successful"

 putStrLn "Partitioning..."

 callCommand $ "nix run" 
               ++ disko 
               ++ eraseMode
               ++ diskSetupSource 
               ++ hide

 putStrLn "Partitioning - Successful"
