#!/bin/sh
set -e
rm -rf php-${PHP_VERSION} php-${PHP_VERSION}.tar.gz
wget https://www.php.net/distributions/php-${PHP_VERSION}.tar.gz
tar -xvzf php-${PHP_VERSION}.tar.gz
cd php-${PHP_VERSION}
./configure --disable-all --with-openssl --enable-ftp --enable-exif --enable-sockets --disable-posix --disable-cgi
make -j $(nproc --all)
mv sapi/cli/php ../php
cd ..
rm -rf php-${PHP_VERSION}
echo "All done!"
