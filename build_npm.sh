#!/usr/bin/sh

# This script builds a gzipped tarball suitable for use by npm as a local package.
# It is assumed that ../cephalopov holds the contents for the package.

cd ..
tar -czvf cpov_examples/cephalopov.tgz --exclude=.* cephalopov
cd cpov_examples
