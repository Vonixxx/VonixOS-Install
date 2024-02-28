module InstallationScript where

import Variables
import Installation
import Partitioning
import System.Process ( callCommand )

main = do
 partitioning
 installation

 putStrLn    "Rebooting in 5 Seconds..."
 callCommand "sleep 5 && reboot"
