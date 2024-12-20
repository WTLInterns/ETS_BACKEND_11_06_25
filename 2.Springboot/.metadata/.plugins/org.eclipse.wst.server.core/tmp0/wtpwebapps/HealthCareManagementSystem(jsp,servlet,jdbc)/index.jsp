<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Healthcare Management System</title>
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom CSS (optional) -->
    <style>
        body {
            padding-top: 56px; /* Space for fixed navbar */
            margin: 0;
            height: 100%;
            overflow: hidden; /* Prevent scrolling */
        }
        .navbar-brand {
            font-size: 1.5rem;
        }
        .background-section {
            background-image: url(resources/images/index.jpg);
            background-size: cover;
            background-attachment: fixed;
            background-repeat: no-repeat;
            background-position: center;
            width: 100%;
            height: calc(100vh - 56px); /* Full viewport height minus navbar height */
            display: flex;
            align-items: center;
            justify-content: center;
            position: relative;
            text-align: center;
        }
        .background-section .overlay {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: rgba(0, 0, 0, 0.5);
            display: flex;
            align-items: center;
            justify-content: center;
            flex-direction: column;
            z-index: 1; /* Ensure the overlay is above the footer */
        }
        .background-section h1 {
            color: white;
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.5);
            font-size: 3rem;
        }
        .background-section p {
            color: white;
            text-shadow: 1px 1px 2px rgba(0, 0, 0, 0.5);
            font-size: 1.5rem;
        }
        .footer {
            position: fixed;
            bottom: 0;
            width: 100%;
            background-color: rgba(0, 0, 0, 0.5); /* Add background for better visibility */
            color: white;
            text-align: center;
            padding: 10px 0; /* Add padding for better visibility */
            z-index: 2; /* Ensure the footer is above the overlay */
        }
    </style>
</head>
<body>

<!-- Navigation Bar -->
<nav class="navbar navbar-expand-lg navbar-light fixed-top bg-info">
    <div class="container">
        <a class="navbar-brand" href="#">Healthcare Management System</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item">
                    <a class="nav-link" href="adminlogin.jsp">Admin Login</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="patientLogin.jsp">Patient Login</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="doctorlogin.jsp">Doctor Login</a>
                </li>
            </ul>
        </div>
    </div>
</nav>

<!-- Background Section -->
<div class="background-section">
    <div >
        <div>
            <h1>Welcome to the Healthcare Management System</h1>
            <p>Your health, our priority. Connect with the best healthcare professionals and manage your appointments seamlessly.</p>
        </div>
    </div>
</div>

<!-- Footer -->
<footer class="footer">
    <div class="container">
        <p>Designed and developed by 
            <a href="https://www.linkedin.com/in/tejas-dube-3a4898232/" target="_blank">Sahil Deshmukh</a> 
        </p>
    </div>
</footer>

<!-- Bootstrap JS and dependencies -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>
