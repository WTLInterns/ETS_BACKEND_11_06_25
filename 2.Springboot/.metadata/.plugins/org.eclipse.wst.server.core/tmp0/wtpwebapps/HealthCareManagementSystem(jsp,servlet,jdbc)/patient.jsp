<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Healthcare Management System</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            padding-top: 56px;
            overflow: hidden; /* Prevent scrolling */
        }
        .background-section {
            background-image: url(resources/images/patientdashboard.jpg);
            background-size: cover;
            background-repeat: no-repeat;
            background-position: center;
            width: 100%;
            height: calc(100vh - 56px); /* Full viewport height minus navbar */
            display: flex;
            align-items: center;
            justify-content: center;
            text-align: center;
            position: relative;
            color: white;
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
            text-align: center;
        }
        .background-section h1 {
            font-size: 3rem;
            margin-bottom: 20px;
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.5);
        }
        .background-section p {
            font-size: 1.5rem;
            text-shadow: 1px 1px 2px rgba(0, 0, 0, 0.5);
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
                    <li class="nav-item">
                        <a class="nav-link" href="bookappointment">Book Appointment</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="patientAppointments">My Appointments</a>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <%= (String) session.getAttribute("name") %>
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

    <div class="background-section">
        <div class="overlay">
            <h1>Welcome to the Healthcare Management System</h1>
            <p>Your health, our priority. Connect with the best healthcare professionals and manage your appointments seamlessly.</p>
            <p>"The greatest wealth is health." - Virgil</p>
            <p>"Health is not valued till sickness comes." - Thomas Fuller</p>
        </div>
    </div>

    <!-- Bootstrap JS and dependencies -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
