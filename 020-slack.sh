#!/bin/bash

if [ ! -d downloaded_installers ]; then
  mkdir -p downloaded_installers;
fi

wget https://downloads.slack-edge.com/linux_releases/slack-desktop-2.6.3-amd64.deb -P downloaded_installers;

dpkg -i downloaded_installers/slack-desktop-2.6.3-amd64.deb
apt-get install -f
