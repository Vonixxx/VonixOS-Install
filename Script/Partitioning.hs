module Partitioning where

import Variables
import System.Process ( callCommand )

partitioning = do
 callCommand $ "curl" 
               ++ diskSetup 
               ++ output 
               ++ tmpDirectory 
               ++ hide

 putStrLn "Acquiring Partitioning Module - Successful"

 callCommand $ "nix run" 
               ++ disko 
               ++ eraseMode
               ++ tmpDirectory 
               ++ hide

 putStrLn "Partitioning - Successful"
