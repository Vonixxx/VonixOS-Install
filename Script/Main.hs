module InstallationScript where

import Installation
import Partitioning
import System.Process (callProcess)

main = do
 partitioning
 installation

 _ <- callProcess "sleep 5 && reboot" []

 putStrLn "Installation Finished - Rebooting..."
