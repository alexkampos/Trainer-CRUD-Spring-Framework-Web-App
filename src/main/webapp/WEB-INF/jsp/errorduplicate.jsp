<%-- 
    Document   : errorduplicate
    Created on : Jun 29, 2020, 3:09:30 PM
    Author     : alexi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
        integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    <title>Trainer</title>
    <link rel="stylesheet" href="css/error.css">
</head>

<body>
    <div class="bg-light fluid" id="container">
        <nav class="navbar navbar-expand-sm navbar-dark bg-dark">
            <a href="home" class="navbar-brand"><img src="img/cb10.png" alt="cb-10 logo" width="140px"
                    height="60px"></a>
            <button class="navbar-toggler" data-toggle="collapse" data-target="#navbarMenu">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarMenu">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item mx-md-3 mx-xl-5"><a href="add" class="nav-link">Add</a></li>
                    <li class="nav-item mx-md-3 mx-xl-5"><a href="show" class="nav-link">Review</a></li>
                    <li class="nav-item mx-md-3 mx-xl-5"><a href="updateordelete" class="nav-link">Update or Delete</a></li>
                </ul>
            </div>
        </nav>
        <div id="text-container">
        <div class="text-center">
            <span class="display-1">
                This entry is already<br>
                on your list!
            </span>
        </div>
        <div class="footer fixed-bottom font-small bg-dark text-light">
            <div class="text-center py-3">Â© 2020 Copyright: Alexandros Kampos<br>
                Created for: <a href="https://peoplecerteducation.org/">PeopleCertEducation.org</a>
            </div>
        </div>
    </div>
    </div>
</body>

</html>
