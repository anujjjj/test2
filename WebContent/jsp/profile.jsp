<%@page import="java.util.*" %>
<html>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<head>
  <title>User Profile</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>


<style>
    

    h4{
        padding-top: 10px;
    }
  

</style>


<script>
$(document).ready(function() {

    
    var readURL = function(input) {
        if (input.files && input.files[0]) {
            var reader = new FileReader();

            reader.onload = function (e) {
                $('.avatar').attr('src', e.target.result);
            }
    
            reader.readAsDataURL(input.files[0]);
        }
    }
    

    $(".file-upload").on('change', function(){
        readURL(this);
    });
});
</script>

<body>

<% 
String firstName = (String)session.getAttribute("firstName");

	String lastName=(String)session.getAttribute("lastName");
String phone=(String)session.getAttribute("phone");
String email=(String)session.getAttribute("email");
String username=(String)session.getAttribute("username");
String pw=(String)session.getAttribute("password");

%>

<hr>

<div class="container bootstrap snippet">
    <div class="row">
        <div style="padding-left: 50px" class="col-md-3"><h1>Username</h1></div>
        
   
    </div>
    <div class="row">
  		<div class="col-sm-3"><!--left col-->
              

      <div class="text-center">
        <img src="http://ssl.gstatic.com/accounts/ui/avatar_2x.png" class="avatar img-circle img-thumbnail" alt="avatar">
        <h6>Upload a different photo...</h6>
        <input type="file" class="text-center center-block file-upload" style="padding-left: 10%">
      </div></hr><br>

               
        
        
        </div><!--/col-3-->
    	<div class="col-sm-9">
            <ul class="nav nav-tabs">
                <li class="active"><a data-toggle="tab" href="#home">Home</a></li>
                <li><a data-toggle="tab" href="#interests">Interests</a></li>
           
              </ul>

              
          <div class="tab-content">
            <div class="tab-pane active" id="home">
                <hr>
                  <form class="form" >
                      <div class="form-group">
                          
                          <div class="col-xs-6">
                      
                          
                              <label for="first_name"><h4>First name </h4></label>
                              <input type="text" class="form-control" name="first_name" id="first_name" value="${firstName }" disabled>
                          </div>
                      </div>
                      <div class="form-group">
                          
                          <div class="col-xs-6">
                            <label for="last_name"><h4>Last name</h4></label>
                              <input type="text" class="form-control" name="last_name" id="last_name" placeholder="last name" value="${lastName }"  disabled>
                          </div>
                      </div>
          
                      
                      <div class="form-group">          <div class="col-xs-6">
                              <label for="phone"><h4>Phone</h4></label>
                              <input type="text" class="form-control" name="phone" id="phone" placeholder="enter phone" value="${phone }">
                          </div>
                      </div>
                      
                      
                      <div class="form-group"> 
                          <div class="col-xs-6">
                              <label for="email"><h4>Email</h4></label>
                              <input type="email" class="form-control" name="email" id="email" placeholder="you@email.com" value="${email }" >
                          </div>
                      </div>
          
                      
                      <div class="form-group">
                          <div class="col-xs-6">
                             <label for="mobile"><h4>Enrollment Number</h4></label>
                              <input type="text" class="form-control" name="mobile" id="mobile" placeholder="Enrollment Number" value="${username }" disabled>
                          </div>
                      </div>
                      
                      
                      <div class="form-group">
               
                      </div>
                      
                    
                      
                      <div class="form-group">
                           <div class="col-xs-12">
                                <br>
                              	<button class="btn btn-lg btn-success" type="submit"><i class="glyphicon glyphicon-ok-sign"></i> Save</button>
                            </div>
                      </div>
              	</form>
              
              <hr>
              
             </div><!--/tab-pane-->
              
             <div class="tab-pane" id="interests">
             
                 
               <hr>
                  <form class="form" action="##" method="post" id="registrationForm">
                      
        
             
                      <div class="form-group">
                           <div class="col-xs-12">
                                <br>
                              	<button class="btn btn-lg btn-success" type="submit"><i class="glyphicon glyphicon-ok-sign"></i> Save</button>
                               	<button class="btn btn-lg" type="reset"><i class="glyphicon glyphicon-repeat"></i> Reset</button>
                            </div>
                      </div>
                      
              	</form>
               
             
             

        </div><!--/col-9-->
    </div><!--/row-->
</body>
</html>                                                      
