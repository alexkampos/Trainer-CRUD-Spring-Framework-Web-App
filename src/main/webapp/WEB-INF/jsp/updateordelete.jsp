<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="jstl" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
        integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    <title>Trainer</title>
    <link rel="stylesheet" href="css/review.css">
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
    <div id="table" class="col-8 offset-2 table-responsive">
    <table class="table table-dark table-striped">
        <legend class="display-4 text-center">
            Trainers
        </legend>
        <thead>
          <tr>
            <th scope="col">No.</th>
            <th scope="col">First Name</th>
            <th scope="col">Last Name</th>
            <th scope="col">Age</th>
          </tr>
        </thead>
        <tbody>
            <jstl:forEach items="${trainers}" var="t" varStatus="theCount">
          <tr>
            <th scope="row">${theCount.count}</th>
            <td>${t.firstName}</td>
            <td>${t.lastName}</td>
            <td>${t.age}</td>
            <td><a href="update?trainerid=${t.trainerId}" class="btn btn-light btn-sm" role="button">Update</a></td>
            <td><a href="delete?trainerid=${t.trainerId}" class="btn btn-light btn-sm" role="button">Delete</a></td>
          </tr>
            </jstl:forEach>
        </tbody>
      </table>
    </div>
   
    <div class="footer fixed-bottom font-small bg-dark text-light">
        <div class="text-center py-3">© 2020 Copyright: Alexandros Kampos<br>
          Created for: <a href="https://peoplecerteducation.org/">PeopleCertEducation.org</a>
        </div>      
    </div>
</div>
</body>

</html>