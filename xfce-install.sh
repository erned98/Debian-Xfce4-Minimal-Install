#!/usr/bin/env bash

## configure and install minimal xfce desktop environment


sudo cat ./xsessionrc >> /home/$SUDO_USER/.xsessionrc
sudo chown $SUDO_USER:$SUDO_USER /home/$SUDO_USER/.xsessionrc

sudo apt install -y \
     libxfce4ui-utils \
     thunar \
     xfce4-appfinder \
     xfce4-panel \
     xfce4-pulseaudio-plugin \
     xfce4-whiskermenu-plugin \
     xfce4-session \
     xfce4-settings \
     xfce4-terminal \
     xfconf \
     xfdesktop4 \
     xfwm4 \
     qt5ct 
    
## additional theming, in case you don't want it, just comment it
git clone https://github.com/erned98/xfce4-dots && cd xfce4-dots && chmod +x setup && ./setup

echo 
echo xfce install complete, please reboot and issue 'startx'
echo

