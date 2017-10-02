#! /bin/bash
sudo echo -e "[user]\n\tname = Yourname\n\temail = name@email.com" > ~/.gitconfig
wget -qO ee rt.cx/ee && sudo bash ee || exit 1
sudo service nginx restart || exit 1
