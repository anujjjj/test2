<%@page import="java.util.*" %>
<!DOCTYPE html>
<html lang="en">

<header>

    <!-- Bootstrap Core CSS -->
    <link href="../vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- MetisMenu CSS -->
    <link href="../vendor/metisMenu/metisMenu.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="../dist/css/sb-admin-2.css" rel="stylesheet">

    <!-- Morris Charts CSS -->
    <link href="../vendor/morrisjs/morris.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="../vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
	
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]--></header>
	

<head>
  <title>User Profile</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
</head>


<style>
    
	.list-group-horizontal .list-group-item {
		display: inline-block;
	}
	
	.list-group-horizontal .list-group-item {
		margin-bottom: 0;
		margin-left:-4px;
		margin-right: 0;
	}
	
	.list-group-horizontal .list-group-item:first-child {
		border-top-right-radius:0;
		border-bottom-left-radius:4px;
	}
	
	.list-group-horizontal .list-group-item:last-child {
		border-top-right-radius:4px;
		border-bottom-left-radius:0;
	}

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
  
    
    <div>
        <jsp:include page="header.jsp"></jsp:include>
    </div>
    
    <div>
        <jsp:include page="navbar.jsp"></jsp:include>
    </div>
	
	
	

<% 
String firstName = (String)session.getAttribute("firstName");

	String lastName=(String)session.getAttribute("lastName");
String phone=(String)session.getAttribute("phone");
String email=(String)session.getAttribute("email");
String username=(String)session.getAttribute("username");
String pw=(String)session.getAttribute("password");
String dob=(String)session.getAttribute("dob");
String adyear=(String)session.getAttribute("adyear");
String branch=(String)session.getAttribute("branch");

%>

<div style="padding-top: 1%;"></div>

<div class="container bootstrap snippet" id="page-wrapper">
    <div class="row">
  		<div class="col-sm-3"><!--left col-->
              

      <div class="text-center" style="margin-top:50%">
        <img src="http://ssl.gstatic.com/accounts/ui/avatar_2x.png" class="avatar img-circle img-thumbnail" alt="avatar">
        <h6>Upload a different photo...</h6>
        <input type="file" class="text-center center-block file-upload" style="padding-left: 10%">
      </div></hr><br>
	  
               
        
        
        </div><!--/col-3-->
    	<div class="col-sm-9">
            

              
          <div class="tab-content">
            <div class="tab-pane active" id="home">
                <hr>
                  <form class="form" action="/test2/ProfileUpdate" method="post">
                      <div class="form-group">
                          
                          <div class="col-xs-6">
                      
                          
                              <label for="first_name"><h4>First name </h4></label>
                              <input type="text" class="form-control" name="first_name" id="first_name" placeholder="First Name" value="${firstName }" disabled>
                          </div>
                      </div>
                      <div class="form-group">
                          
                          <div class="col-xs-6">
                            <label for="last_name"><h4>Last name</h4></label>
                              <input type="text" class="form-control" name="last_name" id="last_name" placeholder="Last Name" value="${lastName }"  disabled>
                          </div>
                      </div>
					  
					  
					  <div class="form-group">
                          <div class="col-xs-6">
                             <label for="mobile"><h4>Date Of Birth</h4></label>
                              <input type="text" class="form-control" name="dob" id="mobile" placeholder="Date Of Birth" value="${dob }" disabled>
                          </div>
                      </div>
					  
					  
					  <div class="form-group">
                          <div class="col-xs-6">
                             <label for="mobile"><h4>Year Of Admission</h4></label>
                              <input type="text" class="form-control" name="admission_year" id="mobile" placeholder="Year Of Admission" value="${adyear }" disabled>
                          </div>
                      </div>
					  
					  
					  <div class="form-group">
                          <div class="col-xs-6">
                             <label for="mobile"><h4>Department</h4></label>
                              <input type="text" class="form-control" name="dob" id="dept" placeholder="Department" value="${branch }" disabled>
                          </div>
                      </div>

                      
                      <div class="form-group">          
					  <div class="col-xs-6">
                              <label for="phone"><h4>Phone</h4></label>
                              <input type="text" class="form-control" name="phone" id="phone" placeholder="Phone Number" value="${phone }">
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
                              <input type="text" class="form-control" name="eno" id="mobile" placeholder="Enrollment Number" value="${username }" disabled>
                          </div>
                      </div>
					  
					  
					<!--  <div class="form-group">
                          <div class="col-md-12">
                             <label><h4>Interests</h4></label>
							 <div class="list-group list-group-horizontal">
										  <ul class="list-group">
											<li class="list-group-item text-right"><span class="pull-left"><strong>Dance</strong></span><input type="checkbox" style="margin-left:8px"> </li>
											<li class="list-group-item text-right"><span class="pull-left"><strong>Music</strong></span> <input type="checkbox"style="margin-left:8px"></li>
											<li class="list-group-item text-right"><span class="pull-left"><strong>Photography</strong></span> <input type="checkbox"style="margin-left:8px"></li>
											<li class="list-group-item text-right"><span class="pull-left"><strong>Sets & Decoration</strong></span><input type="checkbox"style="margin-left:8px"> </li>
											<li class="list-group-item text-right"><span class="pull-left"><strong>Drama</strong></span><input type="checkbox"style="margin-left:8px"> </li>
											<li class="list-group-item text-right"><span class="pull-left"><strong>Sports</strong></span> <input type="checkbox"style="margin-left:8px"></li>
											<li class="list-group-item text-right"><span class="pull-left"><strong>Painting</strong></span> <input type="checkbox"style="margin-left:8px"></li>
										  </ul> 

							 </div>
                          </div>
                      </div>-->
                      
                      <div class="form-group"></div>
					  
                      
                      <div class="form-group">
                           <div class="col-xs-12">
                                <br>
                              	<button class="btn btn-lg btn-success" type="submit"><i class="glyphicon glyphicon-ok-sign"></i> Save</button>
                            </div>
                      </div>
              	</form>
              
              <hr>
              
             </div><!--/tab-pane-->
			 
			

			 
    </div><!--/row-->
	
	</div>
	</div>
	<div>
        <jsp:include page="footer.jsp"></jsp:include>
    </div>
	
    <!-- jQuery -->
    <script src="../vendor/jquery/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="../vendor/bootstrap/js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="../vendor/metisMenu/metisMenu.min.js"></script>

    <!-- Morris Charts JavaScript -->
    <script src="../vendor/raphael/raphael.min.js"></script>
    <script src="../vendor/morrisjs/morris.min.js"></script>
    <script src="../data/morris-data.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="../dist/js/sb-admin-2.js"></script>
	

</body>
</html>                                                      
