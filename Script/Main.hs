module InstallationScript where

import Installation
import Partitioning

main = do
 partitioning
 installation
 putStrLn "Installation Finished - Rebooting..."
