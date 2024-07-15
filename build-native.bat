git clone https://github.com/php/php-sdk-binary-tools.git c:\php-sdk
chdir /d c:\php-sdk
call phpsdk-vs17-x64.bat
call c:\php-sdk\bin\phpsdk_buildtree.bat phpmaster
git clone https://github.com/php/php-src.git && cd php-src
git checkout php-%PHP_VERSION%
SET PHP_SDK_VS=vs17
SET PHP_SDK_ARCH=x64
call c:\php-sdk\bin\phpsdk_deps.bat --update --branch master
buildconf && configure --disable-all --with-openssl --enable-ftp --enable-sockets --disable-cgi --enable-cli && nmake
SET DIST_ZIP_DEV_PACK=php.zip
nmake build-dist
