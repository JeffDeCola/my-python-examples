#!/bin/bash
# my-python-examples unit-test.sh

set -e -x

# The code is located in /my-python-examples
# /coverage-results already created becasue of yml file
echo "pwd is: $PWD"
echo "List whats in the current directory"
ls -lat 

# RUN unit_tests and it shows the percentage coverage
# Print to stdout and file using tee
echo "Placeholder to run python tests for my-python-examples" | tee test_coverage.txt

# Add some whitespace to the begining of each line
sed -i -e 's/^/     /' test_coverage.txt

# Move to coverage-results directory.
mv test_coverage.txt coverage-results/.
