sudo apt-get update
sudo apt-get upgrade -y
sudo apt install git -y

sudo apt install python3.8 pip -y

git clone https://github.com/Chia-Network/chia-blockchain.git -b pools.2021-may-25 --recurse-submodules
cd chia-blockchain

sh install.sh

cd ../

git clone https://github.com/Chia-Network/pool-reference.git

cd pool-reference
python3.8 -m venv ./venv
source ./venv/bin/activate
pip install ../chia-blockchain/ 
sudo CHIA_ROOT="/your/home/dir/.chia/testnet7" ./venv/bin/python pool/pool_server.py
