sudo apt-get update
sudo apt-get upgrade -y

sudo apt install python3.8 pip -y

sudo apt install git -y

git clone https://github.com/Chia-Network/chia-blockchain.git -b pools.2021-may-25 --recurse-submodules
cd chia-blockchain

sh install.sh

cd chia-blockchain

. ./activate
chia init

chia start all
