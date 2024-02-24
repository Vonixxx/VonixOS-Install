module Partitioning where

import Variables
import System.Process ( callCommand )

partitioning = do
 putStrLn "Acquiring Partitioning Module..."

 callCommand $ "curl" 
               ++ diskSetup 
               ++ output 
               ++ tmpDirectory 
               ++ hide

 putStrLn "Acquiring Partitioning Module - Successful"

 putStrLn "Partitioning..."

 callCommand $ "nix run" 
               ++ disko 
               ++ eraseMode
               ++ tmpDirectory 
               ++ hide

 putStrLn "Partitioning - Successful"
