echo '##############################################################'
echo '##############################################################'
echo '##############################################################'

echo 'Checking python version...'

python3 --version

echo '##############################################################'
echo '##############################################################'
echo '##############################################################'

echo 'Setting up virtual environment...'

sudo apt-get -y install python3-pip

python3 -m pip install virtualenv
python3 -m virtualenv env
source env/bin/activate

pip install numpy tensorflow-gpu==1.12.0

echo '##############################################################'
echo '##############################################################'
echo '##############################################################'

echo 'Executing test script...'

python main.py

echo 'Done.'

deactivate
rm -rf env
