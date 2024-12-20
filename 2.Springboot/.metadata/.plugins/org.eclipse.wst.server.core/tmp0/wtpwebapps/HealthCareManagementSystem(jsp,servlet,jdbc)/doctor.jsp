<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Health Management Dashboard</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background: url(resources/images/doctor.jpg) no-repeat center center fixed;
            background-size: cover;
        }
        .transparent-section {
            position: relative;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            text-align: center;
            color: #fff; /* Ensure text is readable */
        }
        .navbar {
            background-color: #004080; /* Dark blue color */
        }
        .display-4{
            color: #004080;
        }
        b{
            color: black;
            background-color:lightblue;
        }
    </style>
</head>
<body>

<nav class="navbar navbar-expand-lg navbar-dark">
    <a class="navbar-brand" href="#">Healthcare Management System</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav ml-auto">
            
            <li class="nav-item">
                <a class="nav-link" href="Appointments">Appointments</a>
            </li>
            <div class="dropdown">
                <button class="btn dropdown-toggle text-white" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                   <%=session.getAttribute("name") %>
                </button>
                <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                    <a class="dropdown-item" href="doctorprofile">Profile</a>
                    <a class="dropdown-item" href="doctorlogout">Logout</a>
                </div>
            </div>
        </ul>
    </div>
</nav>

<!-- Welcome Message -->
<div class="container mt-4">
    <div class="transparent-section">
        <div>
            <h1 class="display-4"> <b>Welcome to Healthcare Management</b></h1>
            <p class="lead"> <b>Manage your health system efficiently with our comprehensive dashboard.</b></p>
        </div>
    </div>
</div>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
