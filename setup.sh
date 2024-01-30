#!/bin/bash
sudo apt remove --purge wolfram-engine libreoffice*
sudo apt autoremove
# sudo apt install -y python-dev python-pip libfreetype6-dev libjpeg-dev build-essential
sudo apt install -y libfreetype6-dev libjpeg-dev build-essential i2c-tools python3-opencv python3-smbus util-linux procps hostapd iproute2 iw haveged dnsmasq libqt5gui5 libqt5webkit5 libqt5test5 libhdf5-dev libhdf5-serial-dev libatlas-base-dev libjasper-dev

sudo sed 's/#dtparam=i2c_arm=on/dtparam=i2c_arm=on\nstart_x=1\n/' /boot/config.txt

python3 -m venv ~/.local --system-site-packages
pip3 install -U pip
pip3 install -r requirements.txt

echo "blacklist snd_bcm2835" | sudo tee /etc/modprobe.d/snd-blacklist.conf


