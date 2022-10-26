<!DOCTYPE html>
<html lang="en" >
<head>
  <meta charset="UTF-8">
  <title>CodePen - HTML, CSS | Responsive Registration Form</title>
  <meta name="viewport" content="width=device-width, initial-scale=1"><link rel="stylesheet" href="./bpstyle.css">

</head>
<body>
<!-- partial:index.partial.html -->
<div class="container">
  <div class="title">Weight</div>
  <form action="Weightserv">
    <div class="user__details">
      
      <div class="input__box">
        <span class="details">Weight</span>
        <input type="text"  placeholder="Enter your weight" name="weight" required>
      </div>
      <div class="input__box">
        <span class="details">Date</span>
        <input type="date" placeholder="Enter the date" name="date" required>
      </div>
      <div class="input__box">
        <span class="details">Note</span>
        <input type="text" placeholder="Note" name="note" required>
      </div>
      
      

    </div>
    <div class="button">
      <input type="submit" value="Save">
    </div>
  </form>
</div>
<!-- partial -->
  
</body>
</html>
