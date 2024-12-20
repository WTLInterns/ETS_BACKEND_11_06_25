<%@ page import="hms.entity.Docters" %>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Doctor Profile</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        
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
    <!-- Add your CSS stylesheets or Bootstrap CDN links here -->
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
<br>
<br>
<br>
<br>
<!-- Profile Section -->
    <!-- Profile Section -->
    <div class="container">
        <div class="profile-section">
            <div class="profile-header">
                <h2>Doctor Profile</h2>
                <% Docters docters = (Docters) session.getAttribute("doctors"); %>
            </div>
            <form action="update_patient.jsp" method="post">
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="patientId">Doctor ID</label>
                            <input type="text" class="form-control" name="patientId" value="<%= docters.getId() %>" readonly>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="firstName">Doctor Name</label>
                            <input type="text" class="form-control" name="firstName" id="firstName" placeholder="Enter First Name" value="<%= docters.getFirstname() %> <%=docters.getLastname() %>" readonly>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="lastName">Specialization</label>
                            <input type="text" class="form-control" name="lastName" id="lastName" placeholder="Enter Last Name" value="<%= docters.getSpec() %>" readonly>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="email">Email</label>
                            <input type="text" class="form-control" name="email" id="email" value="<%= docters.getEmail() %>" readonly>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="phoneNumber">Phone Number</label>
                            <input type="text" class="form-control" name="phoneNumber" id="phoneNumber" placeholder="Enter Phone Number" value="<%= docters.getPhonenumber() %>" readonly>
                        </div>
                    </div>
                </div>
                
            </form>
        </div>
    </div>
<!-- Bootstrap JS and dependencies -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>

