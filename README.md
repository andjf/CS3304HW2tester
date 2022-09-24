# CS3304HW2tester
Testing harness for VT's CS-3304 (Comparative Languages) Homework 2 "Semantics" ANTLER grammar (ANTLR Problems part 2)

## Usage
1. Create the `src` in `CS3304HW2tester`
2. Place the following files in the `src` directory
    - `HW3.java`
    - `HW3Lexer.java`
    - `HW3Parser.java`
3. Compile using the following
    ```bash
    > $ compile.sh
    ```
4. Run.
    -  You can **run the pre-existing** tests with (see [`tests`](https://github.com/andjf/CS3304HW2tester/tree/main/tests) directory)
        ```bash
        > $ compare.sh
        ```
    - Alternatively, you can use the [`run.sh`](https://github.com/andjf/CS3304HW2tester/tree/main/run.sh) script manually:
      ```bash
      # To enter from the terminal
      > $ run.sh
      ```
      or
      
      ```bash
      # To read from a file
      > $ run.sh code.in
      ```
