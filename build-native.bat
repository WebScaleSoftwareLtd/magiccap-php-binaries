git clone https://github.com/php/php-sdk-binary-tools.git c:\php-sdk
chdir /d c:\php-sdk
call phpsdk-vs17-x64.bat
phpsdk_buildtree phpmaster
git clone https://github.com/php/php-src.git && cd php-src
git checkout php-%PHP_VERSION%
phpsdk_deps --update --branch %PHP_VERSION%
uildconf && configure --disable-all --with-openssl --enable-ftp --enable-exif --enable-sockets --disable-posix --disable-cgi && nmake
