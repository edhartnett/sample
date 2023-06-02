#!/bin/sh
# This is a test script for the sample project. It runs the hello program.
#
# Ed Hartnett, 6/2/23

set -e
echo ""
echo "*** Running hello test"

# Degrib2 a GRIB2 file.
../src/hello > hello.txt

# Check against expected output.
cmp hello.txt ref_hello.txt

echo "*** SUCCESS!"
exit 0
