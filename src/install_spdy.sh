sudo dpkg -r mod-spdy-beta
sudo rm -f out/Debug/mod-spdy-beta*.deb
sudo BUILDTYPE=Debug make linux_package_deb
sudo dpkg -i out/Debug/mod-spdy-beta*.deb
sudo service apache2 restart
