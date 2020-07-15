<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
        integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    <title>Trainer</title>
    <link rel="stylesheet" href="css/index.css">
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
        <div class="offset-4">

            <span class="display-4">Welcome</span><span style="font-size: 40px;font-weight:300">
                &nbsp;&nbsp;to&nbsp;&nbsp;</span><span class="display-2"> CB-10!</span>
        </div>
        <div class="offset-3 ">
            <span class="display-3">Add&nbsp;</span><span style="font-size: 40px;font-weight:300"> a new trainer on your
                list today,</span>
        </div>
        <div class="offset-2">
            <span class="display-3">Update&nbsp;</span><span style="font-size: 40px;font-weight:300"> or</span>
            <span class="display-3">&nbsp; Delete</span><span style="font-size: 40px;font-weight:300">&nbsp; one of your existing
                trainers,</span>
        </div>
        <div class="offset-4">
            <span style="font-size: 40px;font-weight:300">or</span><span class="display-3"> Review</span><span
                style="font-size: 40px;font-weight:300"> your current list.</span>
        </div>
        <div class="footer fixed-bottom font-small bg-dark text-light">
            <div class="text-center py-3">© 2020 Copyright: Alexandros Kampos<br>
                Created for: <a href="https://peoplecerteducation.org/">PeopleCertEducation.org</a>
            </div>
        </div>
    </div>
    </div>
</body>

</html>