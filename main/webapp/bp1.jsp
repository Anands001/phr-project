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
  <div class="title">Blood pressure</div>
  <form action="BpServlet" method="post">
    <div class="user__details">
      <div class="input__box">
        <span class="details">Systolic</span>
        <input type="text" placeholder="number" name="systolic"required>
      </div>
      <div class="input__box">
        <span class="details">Diastolic</span>
        <input type="text" placeholder="number" name="diastolic"required>
      </div>
      <div class="input__box">
        <span class="details">Pulse</span>
        <input type="text" placeholder="number"name="pulse" required>
      </div>
      <div class="input__box">
        <span class="details">Irregular Heatbeat Detected</span>
        <input type="text"  placeholder="Yes or No" name="sireg" required>
      </div>
      <div class="input__box">
        <span class="details">Date</span>
        <input type="text" placeholder="YYYY/MM/DD" name="date" required>
      </div>
      <div class="input__box">
        <span class="details">Time</span>
        <input type="text" placeholder="Enter the time" name="time" required>
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