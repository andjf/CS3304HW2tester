#!/usr/bin/bash

# Runs your code with the ./tests/text.in as input
# diffs with tests/test.ans. Writes diff to diff.txt
diff <(run.sh ./tests/test.in) <(cat ./tests/test.ans) > ./diff.txt

# Check if there is any diff in the files
if [ $(cat ./diff.txt | wc --bytes) -gt 0 ]; then
    # If there is a diff, print the result of the diff
    echo "FAILED"
    echo "Output differs... diff follows:"
    cat ./diff.txt
else
    # If they're the same, output such
    echo "PASSED"
    echo "`cat ./tests/test.ans | wc -l` lines of test output match!"
fi

# Remove the temp diff file
rm ./diff.txt