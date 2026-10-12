
#!/bin/bash

set -e



echo "[1/4] Menginstal curl dan git..."

apt update && apt install -y curl git



echo "[2/4] Menginstal Node.js..."

curl -sL https://deb.nodesource.com/setup_24.x -o nodesource_setup.sh

bash nodesource_setup.sh

apt install -y nodejs

rm -f nodesource_setup.sh



echo "[3/4] Menginstal dependensi untuk node-canvas..."

apt install -y python3 make g++ pkg-config libcairo2-dev libpango1.0-dev libjpeg-dev libgif-dev librsvg2-dev



echo "[4/4] Menginstal tool npm global..."

npm install -g node-gyp prebuild-install



echo "Instalasi selesai!" 
