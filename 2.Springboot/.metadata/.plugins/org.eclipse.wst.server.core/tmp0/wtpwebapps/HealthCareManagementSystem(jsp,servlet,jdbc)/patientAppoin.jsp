<%@ page import="hms.entity.Docters"%>
<%@ page import="hms.entity.Patients"%>
<%@ page import="java.util.List"%>
<%@ page import="hms.entity.Appointments"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>My Appointments</title>
<link
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	rel="stylesheet">
<style>
body {
	padding-top: 56px;
}
</style>
</head>
<body>
	<!-- Navigation Bar -->
	<nav class="navbar navbar-expand-lg navbar-light bg-info fixed-top">
		<div class="container">
			<a class="navbar-brand" href="#">Welcome to Healthcare Management
				System</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarNavDropdown">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item"><a class="nav-link"
						href="bookappointment">Book Appointment</a></li>
					
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#"
						id="navbarDropdownMenuLink" role="button" data-toggle="dropdown"
						aria-haspopup="true" aria-expanded="false"> 
								<%String name=(String)session.getAttribute("name");
                        // Integer pid=(Integer)request.getAttribute("pid");
                         
                         %>
                         <%=name %>
					</a>
						<div class="dropdown-menu dropdown-menu-right"
							aria-labelledby="navbarDropdownMenuLink">
							<a class="dropdown-item" href="patientprofile">Profile</a> <a
								class="dropdown-item" href="patientlogout">Logout</a>
						</div></li>
				</ul>
			</div>
		</div>
	</nav>

	<div class="container mt-5">
		<h2 class="text-center">My Appointments</h2>
		<table class="table table-hover mt-4">
			<thead class="thead-dark">
				<tr>
					<th scope="col">Appointment ID</th>
					<th scope="col">Appointment Date</th>
					<th scope="col">Reason</th>
					<th scope="col">Doctor Name</th>
					
				</tr>
			</thead>
			<tbody>
				<%-- Assuming 'appointmentsList' is a List of Appointment objects passed to the request --%>
				<%
				List<Appointments> appointmentsList = (List<Appointments>) request.getAttribute("Alist");
				for (Appointments appointment : appointmentsList) {
				%>
				<tr>
					<td><%=appointment.getAid()%></td>
					<td><%=appointment.getAppointmentdate()%></td>
					<td><%=appointment.getReason()%></td>
					<td><%=appointment.getDocters().getFirstname()%><%=appointment.getDocters().getLastname()%>
					
				</tr>
				<%
				}
				%>
			</tbody>
		</table>
	</div>

	<!-- Bootstrap JS and dependencies -->
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
