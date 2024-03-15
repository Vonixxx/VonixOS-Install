module Partitioning where

import Variables
import Text.Printf ( printf )
import System.Process ( callCommand )

partitioning = do
 putStrLn "Acquiring Partitioning Module..."

 callCommand $ printf "curl %a -o /tmp/partitioning.nix %b" 
                      linkDiskSetup
                      hide

 putStrLn "Acquiring Partitioning Module - Successful"
 ---
 callCommand "lsblk --nodeps --output NAME,SIZE"

 putStrLn "If there is only one option, then pick that. If there are more, pick the one largest in size."
 putStrLn "Should be either nvme0n1 or sda"
 putStr   "Disk: "

 disk <- getLine
 ---
 putStrLn "Partitioning..."

 callCommand $ printf "nix run %a -- --mode disko /tmp/partitioning.nix --arg device '\"/dev/%b\"' %c"
                      linkDisko
                      disk
                      hide

 putStrLn "Partitioning - Successful"
