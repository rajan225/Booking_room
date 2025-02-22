<!DOCTYPE html>
<html>
<head>
 <title>Contact us </title>
        <link href="images/50.jpg" rel="icon"/>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">

  
  <link href="css/bootstrap.css" rel="Stylesheet"/>
        <script src="js/bootstrap.bundle.js">
            
        </script>
  
  
  <style>
    .login-container {
      background-image: url('images/h10.jpg');
      background-size: cover;
      background-position: center;
      width: 100%;
      height: 100vh;
      display: flex;
      justify-content: center;
      align-items: end;
    }
    
    footer {
      background-color: orchid;
      padding: 25px 0;
      position: relative;
      bottom: 0;
      width: 100%;
    }
  </style>
</head>
<body>
  <div class="login-container row">
      <div class="col-sm-5">
      
<!--      <div class="form-group bg-danger text-light" style="min-height: 500px;">-->
          
          <div class="bg-danger text-light ml-0" style="margin:auto;background: transparent;opacity: 0.6; width: 50%;  "  >
                        
                        <h4>Contact Us</h4>
                        <div class="d-flex py-5">
                            <i class="bi bi-geo-alt-fill"></i>
                            <p>Address :- 502 Gopiganj Bhadohi 221303</p>
                        </div>
                        <div class="d-flex pb-5">
                            <i class="bi bi-telephone-fill"></i>
                            <p>Contact :- +91 9648022011</p>
                        </div>
                        <div class="d-flex pb-5">
                            <i class="bi bi-envelope-fill"></i>
                            <p>Email :-  xyz@gmail.com </p>
                        </div>
                        <div class="d-flex pb-5">
                            <i class="bi bi-browser-fill"></i>
                            <p>Website :-  www.room.booking.com</p>
                        </div>
                    </div>
            
      <!--</div>-->
      </div>
     
      <div class="col-sm-2"></div>
      <div class=" col-sm-5" >
      <h2 class="text-light">Contact Us</h2>
      <form class=""  method="post" action="controller.jsp" >
          <input type="hidden" name="page" value="contact"/>
        <div class="form-group">
            <label for="username" class="text-light">Enter full name :</label>
            <input type="text"name="name" class="form-control" id="username"  placeholder="Enter Full name" required>
        </div>
          <div class="form-group">
            <label for="username" class="text-light">Enter Mobile number:</label>
            <input type="number"name="mobile" class="form-control" id="username"  placeholder="Enter mobile number" required>
        </div>


        <div class="form-group">
          <label for="password" class="text-light">Email Id:</label>
          <input type="email" name="email"class="form-control" id="password" placeholder="Enter Email" required>
        </div>
          <div class="form-group">
            <label for="username" class="text-light">Enquiry subject :</label>
          
            <textarea class="form-control" name="subject"></textarea>
          </div>
          <a href="index.jsp"Style=";" class="text-light"> BACK HOME</a>

          <center>
        <button type="submit" class="btn btn-outline-success my-4">Submit</button>
        
          </center>
      </form>
    </div>
  </div>
    
    
    
      
            <!--footer s-->
            <div class="row col-sm">
                
                
                <footer class="text-center text-light">
    <div class="container">
      <p>© 2024-2030 online booking room. All rights reserved.</p>
      
    </div>
  </footer>
                
            </div>
            
            <!--footer e-->
</body>
</html>