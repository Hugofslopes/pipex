<p align="center">
    <img src="https://www.42porto.com/wp-content/uploads/2024/08/42-Porto-Horizontal.png" alt="Pipex Image" />
</p>
<h1 align="center">Pipex</h1>

<div style="text-align: justify;">
    <h2>Summary</h2>
    <p>
        Pipex is an 42 School project wich has the goal to learn how to create pipes like bash terminal.
        The program receives 4 arguments. 1st is one file, second and third are bash comands like "ls, grep, ..."  and the number four other file. The argument number 4 does not need to exist because the program is able to creat it. This program should behave the same as bash :</p> <b>$> < file1 cmd1 | cmd2 > file2" </b>
    <h2>Code Phases</h2>
    <p>
       asdsad 
    </p>
    <h2>Setup</h2>
    <p>
        <b>Step 1:</b> Clone the repository<br><code>https://github.com/Hugofslopes/pipex.git</code><br><br>
        <b>Step 2:</b> Open the terminal on the repo folder and write:<br> <code>make</code><br><br>
        <b>Step 3:</b> Execute:<br>
        ```
        "./pipex &lt;file1&gt; "comand1" "comand2" &lt;file2&gt;"
        ```
        <br><br>
        <b>Step 4:</b> Run tests:<br><code>./pipex_testes.sh</code>
    </p>
    <h2>Improvements</h2>
    <p>
        The improvements to be made are to accept multiple pipes and handle more input errors, like the case of unset PATH before running the program.
    </p>
</div>

```
bash -c "$(curl -fsSL https://raw.github.com/xicodomingues/francinette/master/bin/install.sh)"
```