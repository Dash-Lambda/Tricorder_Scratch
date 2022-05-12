export DISTRO=buster-stable
echo "deb http://apt.radxa.com/$DISTRO/ ${DISTRO%-*} main" | sudo tee -a /etc/apt/sources.list.d/apt-radxa-com.list
wget -O - apt.radxa.com/$DISTRO/public.key | sudo apt-key add -

export DISTRO=buster-testing
echo "deb http://apt.radxa.com/$DISTRO/ ${DISTRO%-*} main" | sudo tee -a /etc/apt/sources.list.d/apt-radxa-com.list
wget -O - apt.radxa.com/$DISTRO/public.key | sudo apt-key add -

sudo apt update
sudo apt install libmraa build-essential