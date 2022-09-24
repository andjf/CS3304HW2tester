#!/usr/bin/bash

for inFile in tests/*.in; do

    base=`echo "$inFile" | cut -f 1 -d '.'`
    testName=`echo "$base" | cut -d '/' -f 2`
    ansFile="$base.ans"

    if [[ -f $ansFile ]]; then
        
        echo ""
        echo "Starting Test: '$testName'"
        echo "----------------------------------"
        
        # Runs your code with the ./tests/text.in as input
        # diffs with tests/test.ans. Writes diff to diff.txt
        diff <(run.sh $inFile) <(cat $ansFile) > ./diff.txt

        # Check if there is any diff in the files
        if [ $(cat ./diff.txt | wc --bytes) -gt 0 ]; then
            # If there is a diff, print the result of the diff
            echo "FAILED"
            echo "Output differs... diff follows:"
            cat ./diff.txt
        else
            # If they're the same, output such
            echo "PASSED"
            echo "`cat $ansFile | wc -l` lines of test output match!"
        fi

        # Remove the temp diff file
        rm ./diff.txt
    else
        echo "Cannot find associated answer file: $ansFile"
    fi
done

echo ""
