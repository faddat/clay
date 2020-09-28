#!/bin/bash

# This install script runs inside the chroot of your image builder.
# After it runs, a second shell session installs nodejs with nvm

mv /etc/resolv.conf /etc/resolv.conf.bk
echo "deb https://download.zerotier.com/debian/buster buster main" >/etc/apt/sources.list.d/zerotier.list
echo 'nameserver 8.8.8.8' > /etc/resolv.conf
echo 'nameserver 1.1.1.1' >> /etc/resolv.conf
apt update
apt install -y curl wget jq apt-transport-https gnupg gnupg-agent software-properties-common
curl -s 'https://raw.githubusercontent.com/zerotier/ZeroTierOne/master/doc/contact%40zerotier.com.gpg' | gpg --import
apt-key add 1657198823E52A61
apt update
apt install -y zerotier-one
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash
chmod +x /usr/bin/clayd /usr/bin/claycli
mkdir -p /clay/config
systemctl enable clayd
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
nvm i node
