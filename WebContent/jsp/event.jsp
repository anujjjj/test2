<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>PIConnecT</title>

<style type="text/css">
</style>

</head>
   
<body>

	<%
 	String eventId =request.getParameter("eventId"); 
	String eventName = (String)request.getAttribute("eventName");
	String startDate = (String)request.getAttribute("startDate");
	String endDate = (String)request.getAttribute("endDate");
	String ldatevol = (String)request.getAttribute("ldatevol");
	String ldatereg = (String)request.getAttribute("ldatereg");
	String info = (String)request.getAttribute("info");
	%>  
	 
	
	<jsp:include page="header.jsp"></jsp:include>

	<jsp:include page="navbar.jsp"></jsp:include>
	<div id="wrapper">
	
	<div id="page-wrapper" style="margin-top: 15px;">
                    <div class="jumbotron" style="background-color:white;">
                    
                        <div><center><h1><%= eventName%></h1>
                        <p style="padding: 15px">Start date: <%= startDate %></p>
                                               <p style="padding: 15px">End date: <%= endDate %></p>
                                                <p style="padding: 15px">Last date for volunteer: <%= ldatevol %></p>
                                                <p style="padding: 15px">Last date for registration:<%= ldatereg %></p>
                                             <p style="padding: 15px">Info: <%=info %></p><br>
                        </center>
                        
                        <center>
                        <p>
                            <a style="width:180px; margin:10px;" class="btn btn-primary btn-lg" role="button">VOLUNTEER</a>
                            <a style="width:180px; margin:10px;" class="btn btn-primary btn-lg" role="button">REGISTER</a>
              			</p>
						</center>
					</div>

  </div>
  </div>
     
</body>

</html>
