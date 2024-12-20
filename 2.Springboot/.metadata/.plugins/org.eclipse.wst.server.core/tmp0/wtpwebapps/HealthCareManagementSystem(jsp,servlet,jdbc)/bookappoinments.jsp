<%@ page import="hms.entity.Docters" %>
<%@ page import="hms.entity.Patients" %>
<%@ page import="java.util.List" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Appointments</title>
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
<style>
.background-section {
	background-color: #f5f5f5;
	padding: 50px;
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
                        <a class="nav-link" href="patientAppointments">My Appointments</a>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                           <%String name=(String)session.getAttribute("name");
                           // Integer pid=(Integer)request.getAttribute("pid");
                            
                            %>
                            <%=name %>
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

	<br>
	<br>
	<div class="container mt-5 background-section">
		<div class="row">
			<div class="col-md-8">
				<h2 class="mb-4">Book Appointment</h2>
				<%String appoin=(String)request.getAttribute("appoin");
				if(appoin=="yes"){
				%>
				<h5>Appoinment Added Succesfully check your Appointments</h5>
				<%} %>
				<!-- Appointment Form -->
				<form  action="addAppointments" method="post">
					<div class="form-group">
						<label for="patientId">Patient ID</label>
						
						<input type="text" class="form-control" name="patientId" placeholder="enter your id" >
					</div>
					<div class="form-group">
						<label for="patientId">Patient Name</label>
						
						<input type="text" class="form-control" name="name" placeholder="enter your full name" >
					</div>
					<div class="form-group">
						<label for="doctor">Select Doctor</label>
						<select class="form-control" id="doctor" name="doctorId" required>
							<option value="" disabled selected>Select a doctor</option>
							<%
							List<Docters> doctorsList = (List<Docters>) request.getAttribute("doctorlist");
							for (Docters doctor : doctorsList) {
							%>
							<option value="<%= doctor.getId() %>">
								<%= doctor.getFirstname() %> <%= doctor.getLastname() %> - <%= doctor.getSpec() %>
							</option>
							<%
							}
							%>
						</select>
					</div>
					<div class="form-group">
						<label for="appointmentDate">Appointment Date</label>
						<input type="datetime-local" class="form-control" id="appointmentDate" name="appointmentDate" required>
					</div>
					<div class="form-group">
						<label for="reason">Reason</label>
						<textarea class="form-control" id="reason" name="reason" rows="3" placeholder="Enter reason for appointment"></textarea>
					</div>
					<button type="submit" class="btn btn-primary">Add Appointment</button>
				</form>
			</div>
		</div>
	</div>
	<!-- Bootstrap JS and dependencies -->
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
