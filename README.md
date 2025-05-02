<p align="center">
    <img src="https://www.42porto.com/wp-content/uploads/2024/08/42-Porto-Horizontal.png" alt="Pipex Image" />
</p>
<h1 align="center">Pipex</h1>
<p align="center">
    <img src="https://github.com/user-attachments/assets/ca0ec9d2-b97d-4e3c-b646-5a03cf7bad6d" alt="Image" />
</p>

## Summary
<p>
    Pipex is an 42 School project wich has the goal to learn how to create pipes like bash terminal.
    The program receives 4 arguments. 1st is one file, second and third are bash comands like "ls, grep, ..."  and the number four other file. The argument number 4 does not need to exist because the program is able to creat it. This program should behave the same as bash :</p> <b>$> < file1 cmd1 | cmd2 > file2" </b>
</p>

## Code Phases
<ol>
    <li>Check if there is the correct number of arguments: 4 (2 commands and 2 files).</li>
    <li>
</ol>

## Code Setup
<b>
    <b>Step 1:</b> Clone the repository
</p>

    git clone https://github.com/Hugofslopes/pipex.git    

<p>
    <b>Step 2:</b> Open the terminal on the repo folder and write
</p>

    make

<p>
    <b>Step 3:</b> Execute
</p>

    ./pipex <file1> "comand1" "comand2" <file2>

<p>
    <b>Step 4:</b> Run tests:
</p>

    ./pipex_testes.sh

## Improvements
<p>
    The improvements to be made are to accept multiple pipes and handle more input errors, like the case where you unset PATH before running the program.
</p>