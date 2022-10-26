#!/usr/bin/bash

# Make sure that the ANTLER jar file exists
if [[ -f antlr-4.10.1-complete.jar ]]; then
    # Ensure that the src directory exists and src/PR1.java exits
    if [[ -d src && -f src/PR1.java ]]; then
        # Compile the java java code into the compiled directory
        javac -d ./compiled -cp ./antlr-4.10.1-complete.jar src/*.java
    else
        echo "Please place your source code in a directory named 'src'"
    fi
else
    echo "Cannot find antler jar file."
fi
