<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Doctor Registration - Healthcare Management System</title>
<!-- Bootstrap CSS -->
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
<!-- Custom CSS -->
<style>
body {
    padding-top: 56px; /* Space for fixed navbar */
}

.navbar-brand {
    font-size: 1.5rem;
}

.background-section {
    background-image: url(resources/images/doctorregister.jpg);
    background-size: cover;
    background-repeat: no-repeat;
    background-position: center;
    width: 100%;
    height: 100vh; /* Full viewport height */
    display: flex;
    align-items: center;
    justify-content: center;
}

.background-section h1 {
    color: white;
    text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.5);
}

.registration-form {
    background-color: rgba(255, 255, 255, 0.8);
    padding: 20px;
    border-radius: 10px;
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
                    <li class="nav-item"><a class="nav-link" href="adminlogin.jsp">Admin Login</a></li>
                    <li class="nav-item"><a class="nav-link" href="patientLogin.jsp">Patient Login</a></li>
                    <li class="nav-item"><a class="nav-link" href="doctorlogin.jsp">Doctor Login</a></li>
                </ul>
            </div>
        </div>
    </nav>
       
    <!-- Doctor Registration Form -->
    <div class="background-section">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-md-6">
                    <div class="registration-form">
                        <h2 class="mb-4">Doctor Registration</h2>
                        <% String login=(String)request.getAttribute("doctor");
                        if(login=="yes"){
                        
                        %>
                        <h5 style="color:red;">You are Already Registered.........please log in</h5>
                        <%} 
                         else if(login=="succ") {%>
                        <script type="text/javascript">
                        
                        alert("Doctor register Successfully .....|||");
                        </script>
                        <%} %>
                        <form action="registerDoctor" method="post">
                            <div class="form-row">
                                <div class="form-group col-md-6">
                                    <label for="firstName">First Name</label>
                                    <input type="text" class="form-control" id="firstName" name="firstName" required>
                                </div>
                                <div class="form-group col-md-6">
                                    <label for="lastName">Last Name</label>
                                    <input type="text" class="form-control" id="lastName" name="lastName" required>
                                </div>
                            </div>
                            <div class="form-row">
                                <div class="form-group col-md-6">
                                    <label for="email">Email</label>
                                    <input type="email" class="form-control" id="email" name="email" required>
                                </div>
                                <div class="form-group col-md-6">
                                    <label for="password">Password</label>
                                    <input type="password" class="form-control" id="password" name="password" required>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="specialization">Specialization</label>
                                <input type="text" class="form-control" id="specialization" name="specialization" required>
                            </div>
                            <div class="form-group">
                                <label for="phoneNumber">Phone Number</label>
                                <input type="text" class="form-control" id="phoneNumber" name="phoneNumber" required>
                            </div>
                               <button type="submit" class="btn btn-primary">Register</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Bootstrap JS and dependencies -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>
