module Partitioning where

import System.Process ( callCommand )

output     = " -o "
hide       = " > /dev/null "
eraseMode  = " -- --mode disko "
directory  = " /tmp/partitioning.nix "
repository = " github:nix-community/disko "
module     = " https://raw.githubusercontent.com/Vonixxx/VonixOS/master/system/configuration/partitioning/default.nix "

partitioning = do
 callCommand $ "curl" 
               ++ module 
               ++ output 
               ++ directory 
               ++ hide

 putStrLn "Acquiring Partitioning Module - Successful"

 callCommand $ "nix run" 
               ++ repository 
               ++ eraseMode
               ++ directory 
               ++ hide

 putStrLn "Partitioning - Successful"
