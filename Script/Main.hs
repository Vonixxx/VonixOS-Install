module InstallationScript where

import Installation
import Partitioning
import System.Process ( callCommand
                      , callProcess )

main = do
 partitioning
 installation

 callCommand "sleep 5 && reboot"

 putStrLn "Installation Finished - Rebooting..."
