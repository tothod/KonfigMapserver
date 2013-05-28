#!/bin/bash
start=$SECONDS
cd Tile-Serverwork
cd ImportNewDB
sh ladda.sh
cd ..
cd Orter
sh Uppdatera_Orter.sh
cd ..
cd adresser
sh GotAddress.sh
cd ..
cd Prerender
sudo -S touch /var/lib/mod_tile/planet-import-complete
sudo -S /etc/init.d/renderd restart
sh renderall.sh
end=$SECONDS
echo "Time: $((end - start)) secs."



