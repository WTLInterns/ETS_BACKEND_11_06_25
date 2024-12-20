<%@ page import="hms.entity.Patients" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Patient Profile</title>
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
<style>
body {
    padding-top: 56px;
    background-color: #f8f9fa;
}

.profile-section {
    background: white;
    padding: 20px;
    border-radius: 10px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    margin-top: 30px;
}

.profile-header {
    text-align: center;
    margin-bottom: 20px;
}
</style>
</head>
<body>
    <!-- Navigation Bar -->
    <nav class="navbar navbar-expand-lg navbar-light bg-info fixed-top">
        <div class="container">
            <a class="navbar-brand" href="#">Welcome to Healthcare Management System</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNavDropdown">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item"><a class="nav-link" href="bookappointment">Book Appointment</a></li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <%=(String) session.getAttribute("name") %>
                        </a>
                        <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownMenuLink">
                            <a class="dropdown-item" href="patientprofile">Profile</a>
                            <a class="dropdown-item" href="patientlogout">Logout</a>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <!-- Profile Section -->
    <div class="container">
        <div class="profile-section">
            <div class="profile-header">
                <h2>Patient Profile</h2>
                <% Patients patients = (Patients) session.getAttribute("patient"); %>
            </div>
            <form action="update_patient.jsp" method="post">
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="patientId">Patient ID</label>
                            <input type="text" class="form-control" name="patientId" value="<%= patients.getId() %>" readonly>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="firstName">First Name</label>
                            <input type="text" class="form-control" name="firstName" id="firstName" placeholder="Enter First Name" value="<%= patients.getFirstname() %>" readonly>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="lastName">Last Name</label>
                            <input type="text" class="form-control" name="lastName" id="lastName" placeholder="Enter Last Name" value="<%= patients.getLastname() %>" readonly>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="email">Email</label>
                            <input type="text" class="form-control" name="email" id="email" value="<%= patients.getEmail() %>" readonly>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="phoneNumber">Phone Number</label>
                            <input type="text" class="form-control" name="phoneNumber" id="phoneNumber" placeholder="Enter Phone Number" value="<%= patients.getPhonenumber() %>" readonly>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <label for="address">Address</label>
                    <textarea class="form-control" name="address" id="address" rows="3" readonly><%= patients.getAddress() %></textarea>
                </div>
                <button type="submit" class="btn btn-success">Update</button>
            </form>
        </div>
    </div>

    <!-- Bootstrap JS and dependencies -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
