<html>
<p align="center">
    <img src="https://www.42porto.com/wp-content/uploads/2024/08/42-Porto-Horizontal.png" alt="Pipex Image" />
</p>
<h1 align="center">Pipex</h1>
</html>

## Summary

    Pipex is an 42 School project wich has the goal to learn how to create pipes like bash terminal.
    The program receives 4 arguments. 1st is one file, second and third are bash comands like "ls, grep, ..."  and the number four other file. The argument number 4 does not need to exist because the program is able to creat it. This program should behave the same as bash :</p> <b>$> < file1 cmd1 | cmd2 > file2" </b>

## Code Phases
    
    asdsad

## Code Setup
    
    Step 1: Clone the repository
    
    ```
    https://github.com/Hugofslopes/pipex.git    
    ```

    **Step 2:** Open the terminal on the repo folder and write:
    
    ```
    make
    ```

    **Step 3:** Execute:
    
    ```
    "./pipex &lt;file1&gt; "comand1" "comand2" &lt;file2&gt;"
    ```

    **Step 4:** Run tests:
    
    ```
    ./pipex_testes.sh
    ```

## Improvements
    
    The improvements to be made are to accept multiple pipes and handle more input errors, like the case of unset PATH before running the program.
