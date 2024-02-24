module InstallationScript where

import Variables
import Installation
import Partitioning
import System.Process ( callCommand )

main = do
 partitioning
 installation

 callCommand $ reboot
               ++ hide

 putStrLn "Installation Finished - Rebooting in 5 Seconds..."
