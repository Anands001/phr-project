<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8" />
    <meta
      name="viewport"
      content="width=device-width, initial-scale=1, shrink-to-fit=no"
    />
    <link
      href="https://fonts.googleapis.com/css?family=Roboto:300,400&display=swap"
      rel="stylesheet"
    />

    <link rel="stylesheet" href="fonts/icomoon/style.css" />

    <link rel="stylesheet" href="css/owl.carousel.min.css" />

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css" />

    <!-- Style -->
    <link rel="stylesheet" href="css/style.css" />

    <title>Register</title>
    
        <script src="js/jquery-3.3.1.min.js"></script>
         <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.2/css/all.min.css" integrity="sha512-1sCRPdkRXhBV2PBLUdRb4tMg1w2YPf37qatUFeS7zlBy7jJI8Lf4VHwWfZZfpXtYSLy85pkm9GaYVYMfw5BC1A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    
  </head>
  <body>
    <div class="content">
      <div class="container">
        <div class="row">
          <div class="col-md-6" style="margin-top:100px;">
            <img
              src="images/registration img.png"
              alt="Image"
              class="img-fluid"
            />
          </div>
          <div class="col-md-6 contents">
            <div class="row justify-content-center">
              <div class="col-md-8">
                <div class="mb-4">
                  <h3>Register</h3>
                  <p class="mb-4">
                  
                  </p>
                </div>
                <form action="create" method="post">
                  <div class="form-group">
                    <label for="username">Username</label>
                    <input type="text" class="form-control" id="username" name="username" />
                  </div>
                  <div class="form-group">
                    <label for="mail">Email</label>
                    <input type="email" class="form-control" id="Email" name="email" />
                  </div>
                  <div class="form-group">
                    <label for="name">Full Name</label>
                    <input type="text" class="form-control" id="name" name="fullname" />
                  </div>
                  
                  <div class="form-group">
                   <select  class="custom-select" style="background-color:#EDF2F5; border:none; color:#B3B3B3; font-size:12px; decoration:none; padding:0px;" name="secqns">
					  <option selected style="text-align:left;">Security question</option>
					  <option value="what is your favourite subject?">what is your favourite subject?</option>
					  <option value="What high school did you attend?">What high school did you attend?</option>
					  <option value="What was your favorite food as a child?">What was your favorite food as a child?</option>
					 </select>
                  </div>
                  <div class="form-group">
                    <label for="seqans">Security Answer</label>
                    <input type="text" class="form-control" id="secans" name="secans" />
                  </div>
                  <div class="form-group">
                    <label for="newpassword">Password</label>
                    <input type="password" class="form-control" id="pass1" />
                  </div>
                  <div class="form-group mb-4">
                    <label for="conpassword">Confirm Password    </label>
                    <input type="password" class="form-control" id="pass2" name="password"/>
                            
                    <p id="ps"></p>
                  </div>
                  
                  

                  <div class="d-flex mb-5 align-items-center">
                    <label class="control control--checkbox mb-0"
                      ><span class="caption">Remember me</span>
                      <input type="checkbox" checked="checked" />
                      <div class="control__indicator"></div>
                    </label>
                    <!--  <span class="ml-auto"
                      ><a href="#" class="forgot-pass">Forgot Password</a></span
                    >-->
                  </div>

                  <input
                    type="submit"
                    value="Register"
                    class="btn btn-block btn-primary"
                  />

                  <!-- <span class="d-block text-left my-4 text-muted"
                    >or login with</span
                  >

                  <div class="social-login">
                    <a href="#" class="facebook">
                      <span class="icon-facebook mr-3"></span>
                    </a>
                    <a href="#" class="twitter">
                      <span class="icon-twitter mr-3"></span>
                    </a>
                    <a href="#" class="google">
                      <span class="icon-google mr-3"></span>
                    </a>
                  </div>-->
                </form>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <script src="script.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/main.js"></script>
    <script src="js/script.min.js"></script>
  </body>
</html>
