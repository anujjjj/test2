
<!DOCTYPE html">
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    
    <title>PIConnecT</title>
    <style>
       body
       { 
         background-image:url("../photos/login_bg.jpg");
       }
    </style>

    <!-- Bootstrap Core CSS -->
    <link href="../vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- MetisMenu CSS -->
    <link href="../vendor/metisMenu/metisMenu.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="../dist/css/sb-admin-2.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="../vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
  

</head>

<body>
		<%
            
            response.setHeader("Cache-Control","no-cache");
            response.setHeader("Cache-Control","no-store");
            response.setDateHeader("Expires", 0);
            response.setHeader("Pragma","no-cache");

            String username=(String)session.getAttribute("username");
            if(username!=null)
            {                
                response.sendRedirect("dashboard.jsp");    
            }
            else{
                 //`out.println("You have already been logged out <a href=\"login.jsp\">Back</a>");
            }
        %>
   <center><label class="title">PIConnecT</label></center>

    <div class="container">
        <div class="row">
            <div class="col-md-4 col-md-offset-4">
                <div class="login-panel panel panel-default">
                    <div class="panel-heading">
                        <h3 class="panel-title">LOGIN</h3>
                    </div>
                    <div class="panel-body">
                        <form role="form" action="Login" method="post">
                            <fieldset>
                            	<% String message=(String)request.getAttribute("errorMessage"); %>
                            	
                            	<% if(message!=null) { %>
                            	<h5 style="color : red"><%= message %></h5>
                            	<% }%>
                                <div class="form-group">
                                    <input class="form-control" placeholder="E-mail" name="username" type="text" autofocus>
                                </div>
                                <div class="form-group">
                                    <input class="form-control" placeholder="Password" name="password" type="password" value="">
                                </div>
                                <div class="checkbox">
                                    <label>
                                        <input name="remember" type="checkbox" value="Remember Me">Remember Me
                                    </label>
                                </div>
                                
                                <input type="submit" class="btn btn-lg btn-info btn-block" value="Login">
                                <div >
                                    	<p></p>
                                        <a href="signup.jsp">New User ?</a>                                   
                                </div>
                            </fieldset>
                        </form>
                    </div>
                </div>
            </div>
            
        </div>
        
        
    </div>
    
    


    <!-- jQuery  -->
    <script src="../vendor/jquery/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="test2/WebContent/vendor/bootstrap/js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript      -->
	<script src="../vendor/metisMenu/metisMenu.min.js"></script>

    <!-- Custom Theme JavaScript    -->
      <script src="../dist/js/sb-admin-2.js"></script>


</body>

</html>