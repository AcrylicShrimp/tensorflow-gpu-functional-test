echo '##############################################################'
echo '##############################################################'
echo '##############################################################'

echo 'Checking python version...'

python3 --version

echo '##############################################################'
echo '##############################################################'
echo '##############################################################'

echo 'Setting up virtual environment...'

sudo apt-get -y install pip

python3 -m pip install virtualenv
python3 -m virtualenv env
source env/bin/activate

python3 -m pip install numpy tensorflow-gpu

echo '##############################################################'
echo '##############################################################'
echo '##############################################################'

echo 'Executing test script...'

python3 main.py

echo 'Done.'

deactivate
rm -rf env
