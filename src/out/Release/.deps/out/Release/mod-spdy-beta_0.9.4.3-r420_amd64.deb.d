cmd_out/Release/mod-spdy-beta_0.9.4.3-r420_amd64.deb := LD_LIBRARY_PATH=/home/user/mod_spdy/src/out/Release/lib.host:/home/user/mod_spdy/src/out/Release/lib.target:$$LD_LIBRARY_PATH; export LD_LIBRARY_PATH; cd build; mkdir -p /home/user/mod_spdy/src/out/Release; flock -- /tmp/linux_package_lock bash "/home/user/mod_spdy/src/out/Release/install/debian/build.sh" "-o/home/user/mod_spdy/src/out/Release" -b "/home/user/mod_spdy/src/out/Release" -a x64 -c beta