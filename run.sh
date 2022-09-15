#!/usr/bin/bash

# Boolean to take from stdin or a given file
FROM_STDIN=1
# If an argument is provided, read from that file
if (( $# == 1 )); then
    FROM_STDIN=0
fi

# If we've already compiled
if [[ -d compiled ]]; then
    # and the HW2eval.class exists
    if [[ -f compiled/HW2eval.class ]]; then
        # If we should read from stdin...
        if [ $FROM_STDIN -eq 1 ]; then
            # run as such
            java -cp .:antlr-4.10.1-complete.jar:compiled HW2eval
        else
            # Make sure the file provided exists
            if [[ -f $1 ]]; then
                # run the ANTLER grammar on the given file
                java -cp .:antlr-4.10.1-complete.jar:compiled HW2eval < $1
            else
                echo "Cannot find file: $1"
            fi
        fi
    else
        echo "Cannot find 'HW2eval'"
    fi
else
    echo "Please run compile.sh before running."
fi
