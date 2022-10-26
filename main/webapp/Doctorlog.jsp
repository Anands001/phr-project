<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Appointments</title>
<link href="assets/img/favicon.png" rel="icon">
  <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,700,700i|Roboto:100,300,400,500,700|Philosopher:400,400i,700,700i" rel="stylesheet">
  <link href="assets/vendor/aos/aos.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
  <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">
  <link href="assets/css/style.css" rel="stylesheet">
</head>
<body>
<%@page import="phr.* "  %>
<%@page import="entity.* "  %>
<%@page import="java.util.* "  %>
<%@include file="Navbar.jsp" %>
<section id="get-started" class="padd-section text-center">
<%
	AppointDao ad=new AppointDao();
	ArrayList<appointentity> l=ad.docappoint((String)session.getAttribute("docname"));

%>
      <div class="container" data-aos="fade-up">
        <div class="section-title text-center">

          <h2>Your Appointments</h2>
          <p class="separator">eHealth offers a wide range of personal tools and services to users, from healthcare information organizations and disease management outlets to personal reminders to refill prescriptions, attend medical appointments and more.</p>

        </div>
      </div>

      <div class="container">
      <% for(appointentity a:l){ %>
        <div class="row">

          

          <div class="col-md-6 col-lg-12" data-aos="zoom-in" data-aos-delay="200">
            <div class="feature-block">

              <img src="assets/img/svg/cloud.svg" alt="img">
              <h4>Patient Name: <%= a.getFullname() %></h4>
              <p>Contact: <%= a.getMobilenum() %></p>
              <p>Email: <%= a.getEmail() %></p>
              <p>Appointment Date: <%= a.getAptdate() %></p>
              <p>Appointment Time: <%= a.getApttime() %></p>
              <a href="doccancelappoint?docname=<%= a.getDoctorname()%>&username=<%= a.getUsername() %>">Cancel Appointment</a>

            </div>
          </div>


        </div>
        <% } %>
      </div>

    </section>
    
      <!-- Vendor JS Files -->
  <script src="assets/vendor/aos/aos.js"></script>
  <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="assets/vendor/glightbox/js/glightbox.min.js"></script>
  <script src="assets/vendor/swiper/swiper-bundle.min.js"></script>
  <script src="assets/vendor/php-email-form/validate.js"></script>

  <!-- Template Main JS File -->
  <script src="assets/js/main.js"></script>
</body>
</html>