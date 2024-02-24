module InstallationScript where

import Installation
import Partitioning
import System.Process ( callCommand )

hide   = " > /dev/null "
reboot = " sleep 5 && reboot "

main = do
 partitioning
 installation

 callCommand $ reboot
               ++ hide

 putStrLn "Installation Finished - Rebooting in 5 Seconds..."
