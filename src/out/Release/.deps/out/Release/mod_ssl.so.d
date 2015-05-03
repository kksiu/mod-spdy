cmd_out/Release/mod_ssl.so := ln -f "mod_ssl.so" "out/Release/mod_ssl.so" 2>/dev/null || (rm -rf "out/Release/mod_ssl.so" && cp -af "mod_ssl.so" "out/Release/mod_ssl.so")
