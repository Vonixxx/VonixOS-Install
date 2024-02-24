module Partitioning where

import Variables
import System.Process ( callCommand )

partitioning = do
 callCommand $ "curl" 
               ++ diskSetup 
               ++ output 
               ++ directory 
               ++ hide

 putStrLn "Acquiring Partitioning Module - Successful"

 callCommand $ "nix run" 
               ++ disko 
               ++ eraseMode
               ++ directory 
               ++ hide

 putStrLn "Partitioning - Successful"
