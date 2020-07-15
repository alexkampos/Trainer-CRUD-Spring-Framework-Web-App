<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="springForm" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
        integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    <script src="https://cdn.rawgit.com/PascaleBeier/bootstrap-validate/v2.2.0/dist/bootstrap-validate.js" ></script>
    <title>Trainer</title>
    <link rel="stylesheet" href="css/create.css">
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
    <div  id="regform" class="border border-info rounded bg-white p-5">
        <springForm:form action="register" method="post" cssClass="main-form" novalidate="true" modelAttribute="newtrainer">
        <div class="form-group">
            <label for="firstname">First Name</label>
                <springForm:input path="firstName" name="firstname" placeholder="First Name..."  cssClass="form-control" id="firstname" cssErrorClass="form-control errorbox"  maxlength="30" required="true"/>
                <springForm:errors path="firstName" cssClass="errortext"/>
        </div>
        <div class="form-group">
            <label for="lastname">Last Name</label>
            <springForm:input path="lastName" name="lastname" placeholder="Last Name..." cssClass="form-control" id="lastname" cssErrorClass="form-control errorbox" maxlength="30" required="true"/>
            <springForm:errors path="lastName" cssClass="errortext"/>
        </div>
        <div class="form-group">
            <label for="age">Age</label>
            <springForm:input type="number" path="age" name="age" placeholder="Age..." cssClass="form-control" min="18" max="100" cssErrorClass="form-control errorbox" required="true"/>
            <springForm:errors path="age" cssClass="errortext"/>
        </div>
        <input type="submit" value="Register" style="margin-bottom: 30px;">
    </springForm:form>
    </div>
    <div class="footer fixed-bottom font-small bg-dark text-light">
        <div class="text-center py-3">© 2020 Copyright: Alexandros Kampos<br>
          Created for: <a href="https://peoplecerteducation.org/">PeopleCertEducation.org</a>
        </div>      
    </div>
</div>
    <script>
        bootstrapValidate('#firstname','min:2:First name must have at least 2 characters!');
        bootstrapValidate('#firstname','max:30:First name must not have more than 30 characters!');
        bootstrapValidate('#lastname','min:2:Last name must have at least 2 characters!');
        bootstrapValidate('#lastname','max:30:Last name must not have more than 30 characters!');
    </script>
</body>

</html>