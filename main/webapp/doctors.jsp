<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Doctors</title>
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
<%@include file="Navbar.jsp" %>
<% if(session.getAttribute("username")==null){
	response.sendRedirect("Login.jsp");
} %>
<section id="get-started" class="padd-section text-center">

      <div class="container" data-aos="fade-up">
        <div class="section-title text-center">

          <h2>Choose any doctor</h2>
          <p class="separator">eHealth offers a wide range of personal tools and services to users, from healthcare information organizations and disease management outlets to personal reminders to refill prescriptions, attend medical appointments and more.</p>

        </div>
      </div>

      <div class="container">
        <div class="row">

          <div class="col-md-6 col-lg-6" data-aos="zoom-in" data-aos-delay="100">
            <div class="feature-block">

              <img src="images/Bpicon.jpg" alt="img" style="object-fit:contain;">
              <h4>JOHN</h4>
              
              <p>Specialist: Cardiologist,Anesthesiologists</p>
              <a href="doctoshedserv?docname=john">Shedule Appointment</a>

            </div>
          </div>

          <div class="col-md-6 col-lg-6" data-aos="zoom-in" data-aos-delay="200">
            <div class="feature-block">

              <img src="assets/img/svg/cloud.svg" alt="img">
              <h4>HANNA</h4>
              <p>Specialist: Dermatologists</p>
              <a href="doctoshedserv?docname=Hanna">Shedule Appointment</a>

            </div>
          </div>

          
          
         
            
          <div class="col-md-6 col-lg-6" data-aos="zoom-in" data-aos-delay="300">
            <div class="feature-block">

              <img src="assets/img/svg/cloud.svg" alt="img">
              <h4>AMELIA</h4>
              <p>Specialist:Ophthalmologists.</p>
              <a href="doctoshedserv?docname=Amelia">Shedule Appointment</a>

            </div>
          </div>
          
          <div class="col-md-6 col-lg-6" data-aos="zoom-in" data-aos-delay="300">
            <div class="feature-block">

              <img src="assets/img/svg/planet.svg" alt="img">
              <h4>TOM HOLLAND</h4>
              <p>Specialist:Anesthesiology.</p>
              <a href="doctoshedserv?docname=Tom holland">Shedule Appointment</a>

            </div>
          </div>

        </div>
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