#!/bin/bash

# This install script runs inside the chroot of your image builder.
# After it runs, a second shell session installs nodejs with nvm

# Connect to the internet by configuring DNS
mv /etc/resolv.conf /etc/resolv.conf.bk
echo 'nameserver 8.8.8.8' > /etc/resolv.conf
echo 'nameserver 1.1.1.1' >> /etc/resolv.conf

# Update packages and install Zerotier
echo "deb https://download.zerotier.com/debian/buster buster main" >/etc/apt/sources.list.d/zerotier.list
apt update
apt install -y curl wget jq apt-transport-https gnupg gnupg-agent software-properties-common
curl -s 'https://raw.githubusercontent.com/zerotier/ZeroTierOne/master/doc/contact%40zerotier.com.gpg' | gpg --import
apt-key add 1657198823E52A61
apt update
apt install -y zerotier-one

# Set Up Clay
chmod +x /usr/bin/clayd /usr/bin/claycli
mkdir -p /clay/config
systemctl enable clayd


# Set up Nodejs without NVM
wget https://nodejs.org/dist/v12.18.4/node-v12.18.4-linux-arm64.tar.xz
sudo mkdir -p /usr/local/lib/nodejs
sudo tar -xJvf node-v12.18.4-linux-arm64.tar.xz -C /usr/local/lib/nodejs 
echo "export PATH=/usr/local/lib/nodejs/node-v12.18.4-linux-arm64/bin:$PATH" ~/.profile
. ~/.profile
node -v
npm version
npx -v
