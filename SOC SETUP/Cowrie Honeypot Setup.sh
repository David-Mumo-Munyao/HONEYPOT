#Install Python 3 on the Kali Linux VM
sudo apt-get install python3-pip

#Clone Cowrie from GitHub:
git clone https://github.com/cowrie/cowrie.git
cd cowrie

#Install dependencies:
sudo apt-get install build-essential libssl-dev libffi-dev python3-dev
sudo pip3 install -r requirements.txt

#Configure Cowrie’s settings by editing the cowrie.cfg file. Modify the ports and IPs to match your setup.
#Setup Cowrie’s virtual environment:
python3 -m venv venv
source venv/bin/activate

#Run Cowrie:
./start.sh

#Install Dionaea:
sudo apt-get install dionaea

#Start Dionaea:
sudo systemctl start dionaea
