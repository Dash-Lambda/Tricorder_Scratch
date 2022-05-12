sudo cp setup_files/apt-radxa-com.list /etc/apt/sources.list.d/apt-radxa-com.list

wget -O - apt.radxa.com/buster-stable/public.key | sudo apt-key add -
wget -O - apt.radxa.com/buster-testing/public.key | sudo apt-key add -

sudo apt update
sudo apt install libmraa build-essential