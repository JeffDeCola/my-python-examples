#!/bin/sh
# my-python-examples unit-test.sh

echo " "

if [ "$1" = "-debug" ]
then
    echo "unit-tests.sh -debug (START)"
    # set -e causes the shell to exit if any subcommand or pipeline returns a non-zero status. Needed for concourse.
    # set -x enables a mode of the shell where all executed commands are printed to the terminal.
    set -e -x
    echo " "
else
    echo "unit-tests.sh (START)"
    # set -e causes the shell to exit if any subcommand or pipeline returns a non-zero status.  Needed for concourse.
    set -e
    echo " "
fi

echo "The goal is to test your python code"
echo " "

echo "At start, you should be in a /tmp/build/xxxxx directory with two folders:"
echo "   /my-python-examples"
echo "   /coverage-results (created in task-unit-test.yml task file)"
echo " "

echo "pwd is: $PWD"
echo " "

echo "List whats in the current directory"
ls -la
echo " "

# RUN unit_tests and it shows the percentage coverage
# Print to stdout and file using tee
echo "Placeholder to run python tests for my-python-examples" | tee test_coverage.txt

echo "Clean test_coverage.txt file - add some whitespace to the begining of each line"
sed -i -e 's/^/     /' test_coverage.txt
echo " "

echo "The test_coverage.txt file will be used by the concourse pipeline to send to slack"
echo " "

echo "Move text_coverage.txt to /coverage-results directory"
mv "test_coverage.txt" "coverage-results/."
echo " "

echo "unit-tests.sh (END)"
echo " "
