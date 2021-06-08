cd ../

git clone https://github.com/Chia-Network/pool-reference.git

cd pool-reference
python3.8 -m venv ./venv
source ./venv/bin/activate
pip install ../chia-blockchain/ 
sudo CHIA_ROOT="/your/home/dir/.chia/testnet7" ./venv/bin/python pool/pool_server.py
