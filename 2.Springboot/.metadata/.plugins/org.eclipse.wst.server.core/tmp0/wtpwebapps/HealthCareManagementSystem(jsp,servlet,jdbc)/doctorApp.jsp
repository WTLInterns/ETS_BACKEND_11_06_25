<%@ page import="java.util.List"%>
<%@ page import="hms.entity.Appointments"%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Appointments</title>
<!-- Bootstrap CSS -->
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
<style>
.table-responsive {
    margin-top: 20px;
}

.btn-action {
    margin-right: 5px;
}

.navbar {
    background-color: #004080; /* Dark blue color */
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
               
                <li class="nav-item"><a class="nav-link" href="Appointments">Appointments</a></li>
                <div class="dropdown">
                    <button class="btn dropdown-toggle text-white" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <%=session.getAttribute("name")%>
                    </button>
                    <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                        <a class="dropdown-item" href="doctorprofile">Profile</a> 
                        <a class="dropdown-item" href="doctorlogout">Logout</a>
                    </div>
                </div>
            </ul>
        </div>
    </nav>

    <div class="container">
        <h2 class="mt-5 mb-4">Appointments</h2>
        <div class="table-responsive">
            <table class="table table-striped table-bordered">
                <thead>
                    <tr>
                        <th>Patient Name</th>
                        <th>Appointment Date</th>
                        <th>Reason</th>
                        <th>Action</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                    List<Appointments> appointments = (List<Appointments>) request.getAttribute("dlist");
                    
                 for (Appointments appointment : appointments) {
                    %>
                    <tr>
                        <td><%=appointment.getPatients().getFirstname()%> <%=appointment.getPatients().getLastname()%></td>
                        <td><%=appointment.getAppointmentdate()%></td>
                        <td><%=appointment.getReason()%></td>
                        <td>
                            <button class="btn btn-success btn-action">Accept</button>
                            <button class="btn btn-danger btn-action">Delete</button>
                        </td>
                    </tr>
                    <%
                        }
                    
                    %>
                </tbody>
            </table>
        </div>
    </div>
    <!-- Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
