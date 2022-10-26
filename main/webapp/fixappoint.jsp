<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="assets1/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets1/css/datepicker.css">
    <link rel="stylesheet" href="assets1/css/style.css">
  </head>

    <body>
      <div class="inner-layer">
          <div class="container">
            <div class="row no-margin">
                <div class="col-sm-7">
                    <div class="content">
                        <h1>Book You Slot Now and Save your time</h1>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi sagittis at lacus at rhoncus. Integer pharetra lacus vitae sapien blandit eleifend. </p>
                        <h2>For Help Call : +189-123-453</h2>
                    </div>
                </div>
                
                <div class="col-sm-5">
                <form method="post" action="fixappoint">
                    <div class="form-data">
                        <div class="form-head">
                            <h2>Book Appointemnt</h2>
                        </div>
                        <div class="form-body">
                            <div class="row form-row">
                              <input type="text" placeholder="Enter Full name" class="form-control" name="fullname">
                            </div>
                            <div class="row form-row">
                              <input type="text" placeholder="Enter Mobile Number" class="form-control" name="mobilenum">
                            </div>
                             <div class="row form-row">
                              <input type="text" placeholder="Enter Email Adreess" class="form-control" name="email">
                            </div>
                            
                             <div class="form-head">
                            <h2>Doctor Details</h2>
                        </div>
                        <b class="my-4">Name:</b>
                           <div class="row form-row">
                              <input id="" type="text" name="docname" placeholder="John" value="<%= session.getAttribute("doctorname") %>" class="form-control" readonly>
                            </div>
                        <b class="my-4">Specialist:</b>
                            
                            <div class="row form-row">
                              <input id="" type="text" name="specialist" placeholder="Cardiologist,Anesthesiologists" value="<%= session.getAttribute("specialist") %>" class="form-control" readonly>
                            </div>
                            
                            <div class="form-head">
                            <h2>Appointemnt Date and Time</h2>
                        </div>
                           <div class="row form-row">
                              <input id="dat" type="text" name="appointdate" placeholder="Appointment Date" class="form-control">
                            </div>
                            
                            <div class="row form-row">
                              <input id="dat" type="time" name="appointtime" placeholder="Appointment Time" class="form-control">
                            </div>
                            
                          <!--    <h6>Address Details</h6>

                             <div class="row form-row">
                                <div class="col-sm-6">
                                   <input type="text" placeholder="Enter Area" class="form-control">
                                </div>
                                <div class="col-sm-6">
                                   <input type="text" placeholder="Enter City" class="form-control">
                                </div>
                            </div>
                             <div class="row form-row">
                                <div class="col-sm-6">
                                   <input type="text" placeholder="Enter State" class="form-control">
                                </div>
                                <div class="col-sm-6">
                                   <input type="text" placeholder="Postal Code" class="form-control">
                                </div>
                            </div>-->

                             <div class="row form-row">
                               <input type="submit" class="btn btn-success btn-appointment" value="Book Appointment">
                                 
                               
                               
                            </div>

                        </div>
                    </div>
                  </form>
                </div>
              
            </div>
          </div>
      </div>
      
    </body>
  
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="assets1/js/jquery-3.3.1.min.js"></script>
    <script src="assets1/js/popper.min.js"></script>
    <script src="assets1/js/bootstrap.min.js"></script>
    <script src="assets1/js/bootstrap-datepicker.js"></script>

    <script>
      $(document).ready(function(){
          $("#dat").datepicker();
      })
    </script>
    
  </body>
</html>