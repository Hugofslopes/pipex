<!DOCTYPE html>

<html lang="en">

<head>

    <meta charset="UTF-8">

    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Pipex Project</title>

    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">

</head>

<body>

    <div class="container text-center mt-5">

        <img src="https://www.42porto.com/wp-content/uploads/2024/08/42-Porto-Horizontal.png" class="img-fluid" alt="Pipex Image">

        <h1 class="mt-4">Pipex</h1>

        <p class="lead" id="project-description"></p>

    </div>


    <script>

        const projectDescription = "The program receives 4 arguments and it will store on the last argument (one file) the result of the commands defined on argument 2 and 3.<br>" +

            "The argument nbr 4 does not need to exist because the program is able to create it. This behavior is the same as bash.<br>" +

            "The improvements to be made is to accept multiple pipes and handle more input errors. Like is the case of unset PATH before run the program.";

        document.getElementById("project-description").innerHTML = projectDescription;

    </script>


    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>

    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>

    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>

</html>