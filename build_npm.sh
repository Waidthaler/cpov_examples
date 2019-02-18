#!/usr/bin/sh

# This script builds a gzipped tarball suitable for use by npm as a local package.
# It is assumed that ../cephalopov holds the contents for the package.

rm -f cephalopov.tgz
cd ..
tar -czvf cpov_examples/cephalopov.tgz --exclude=.* cephalopov
cd cpov_examples
