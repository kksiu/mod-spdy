sudo dpkg -r mod-spdy-beta
sudo rm -f out/Debug/mod-spdy-beta*.deb
sudo rm -f out/Release/mod-spdy-beta*.deb
sudo BUILDTYPE=Release make linux_package_deb
sudo dpkg -i out/Release/mod-spdy-beta*.deb
sudo service apache2 restart
