#!/bin/sh
set -e
docker build --build-arg PHP_VERSION=${PHP_VERSION} -f Dockerfile.linux -t php-build .
docker run --rm -v $(pwd):/output php-build
docker rmi php-build
echo "All done!"
