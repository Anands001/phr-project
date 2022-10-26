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
  <div class="title">Lab Results</div>
  <form action="AddRecordServ" enctype="multipart/form-data" method="post">
    <div class="user__details">
    
    <div class="input__box">
        <span class="details">Lab Results Doc</span>
        <input type="file" placeholder="" name="inputdisimg" required>
      </div>
    
      <div class="input__box">
        <span class="details">title</span>
        <input type="text" placeholder="Title" name="title" value="Lab results" disabled required>
      </div>
      <div class="input__box">
        <span class="details">records for</span>
        <input type="text" placeholder="info" name="recordsfor" required>
      </div>
      
      <div class="input__box">
        <span class="details">records type</span>
        <input type="text" placeholder="" name="recordtype" required>
      </div>
      
      <div class="input__box">
        <span class="details">Date</span>
        <input type="text" placeholder="Enter the date" name="date" required>
      </div>
      <div class="input__box">
        <span class="details">Comment</span>
        <input type="text" placeholder="...." name="comment" required>
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
