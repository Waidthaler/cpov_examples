#!/usr/bin/sh

# This script builds a gzipped tarball suitable for use by npm as a local package.
# It is assumed that ../cephalopov holds the contents for the package.

rm -f cephalopov.tgz
cd ../cephalopov
./build.js -cd
cd ..
tar --exclude='.*' --exclude='node_modules' -czvf cpov_examples/cephalopov.tgz cephalopov
cd cpov_examples
npm uninstall cephalopov -g
npm install cephalopov.tgz -g

