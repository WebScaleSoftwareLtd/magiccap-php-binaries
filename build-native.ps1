git clone https://github.com/php/php-sdk-binary-tools.git c:\php-sdk
cd c:\php-sdk
git checkout php-sdk-2.2.0
.\phpsdk-vc15-x64.bat
phpsdk_buildtree phpmaster
git clone https://github.com/php/php-src.git && cd php-src
git checkout php-$env:PHP_VERSION
phpsdk_deps --update --branch $env:PHP_VERSION
uildconf && configure --disable-all --with-openssl --enable-ftp --enable-exif --enable-sockets --disable-posix --disable-cgi && nmake
