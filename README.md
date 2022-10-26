# CS3304HW2tester
Testing harness for VT's CS-3304 (Comparative Languages) Project 1 [`ANTLR`](https://www.antlr.org/) + `Java` implimentation

## Usage
1. Create the `src` in `CS3304Project1Tester`
2. Place your `*.java` files in the `src` directory
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
      # To take text from stdin
      > $ run.sh
      ```
      or
      
      ```bash
      # To read from a file
      > $ run.sh test_file.in
      ```
