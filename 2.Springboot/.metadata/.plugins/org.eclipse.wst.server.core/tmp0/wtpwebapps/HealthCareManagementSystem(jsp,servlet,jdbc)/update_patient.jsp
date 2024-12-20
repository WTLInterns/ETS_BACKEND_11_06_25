<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Patient Registration - Healthcare Management System</title>
<!-- Bootstrap CSS -->
<link
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	rel="stylesheet">
<!-- Custom CSS -->
<style>
body {
	padding-top: 56px; /* Space for fixed navbar */
}

.navbar-brand {
	font-size: 1.5rem;
}

.background-section {
	background-image: url(resources/images/updatepatient.jpg);
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

	 <nav class="navbar navbar-expand-lg navbar-light bg-info fixed-top">
        <div class="container">
            <a class="navbar-brand" href="#">Welcome to Healthcare Management System</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNavDropdown">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item"><a class="nav-link" href="bookappoinments.jsp">Book Appointment</a></li>
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
	<!-- Patient Registration Form -->
	<div class="background-section">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-md-6">
					<div class="registration-form">


						<h2 class="mb-4">Update Patient</h2>
						
						<%String update=(String)request.getAttribute("update");
						if(update=="yes"){
						
						%>
						<p>Patient updated successfully.....!<a href="patientprofile">Profile</a></p> 
						<%} %>
						<form action="updatepatient" method="post">
							<div class="form-group">
								<label for="firstName">First Name</label> <input type="text"
									class="form-control" id="firstName" name="firstName" required>
							</div>
							<div class="form-group">
								<label for="lastName">Last Name</label> <input type="text"
									class="form-control" id="lastName" name="lastName" required>
							</div>
							
						
							<div class="form-group">
								<label for="phoneNumber">Phone Number</label> <input type="text"
									class="form-control" id="phoneNumber" name="phoneNumber"
									required>
							</div>
							<div class="form-group">
								<label for="address">Address</label>
								<textarea class="form-control" id="address" name="address"
									rows="3" required></textarea>
							</div>
							<button type="submit" class="btn btn-primary">Update</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Bootstrap JS and dependencies -->
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>
