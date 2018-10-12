<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="javax.servlet.*" %>
<%@page import="java.util.*" %>
<%@page import="java.sql.*" %>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ page import=" javax.servlet.http.HttpSession"%>
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
//	HttpSession Session = request.getSession(true);	
 //String uid=(String)Session.getAttribute("username"); 

 	String eventId =request.getParameter("eventId"); 
	String eventName = (String)request.getAttribute("eventName");
	String startDate = (String)request.getAttribute("startDate");
	String endDate = (String)request.getAttribute("endDate");
	String ldatevol = (String)request.getAttribute("ldatevol");
	String ldatereg = (String)request.getAttribute("ldatereg");
	String info = (String)request.getAttribute("info");
	String einfo = (String)request.getAttribute("einfo");
	String logo = (String)request.getAttribute("logo");

	//String interestId = (String)request.getAttribute("interestId");

	%>  
	 
	
	<jsp:include page="header.jsp"></jsp:include>

	<jsp:include page="navbar.jsp"></jsp:include>
	<div id="wrapper">
	
	<div id="page-wrapper" style="margin-top: 15px;">
	<form action="admin">
                    <div class="jumbotron" style="background-color:#eeeeee;">
                    
                        <div><center><h1><%= eventName%></h1></center>
                       <img src="<%=logo %>" alt="photo" height=250px style="float:right; margin-right:10%;" >
                        <p style="margin-left:10%">Start date: <%= startDate %></p>
          <p style="margin-left:10%">End date: <%= endDate %></p>
           <p style="margin-left:10%">Last date for volunteer: <%= ldatevol %></p>
                <p style="margin-left:10%">Last date for registration:<%= ldatereg %></p>
                  <% if(info==null) { %>
                                  <p style="margin-left:10%">Info: <%=einfo %></p><br>
                  <% } 
                      else {
                                %>
                           	<p style="margin-left:10%">Info: <%=info %></p><br>
                   <%} %>
                        
                        
                        <center>
                        <p>
                        
           <a style="width:180px; margin:10px;"   class="btn btn-primary btn-lg" role="button">ORGANISE</a>
                            <a style="width:180px; margin:10px;"   class="btn btn-primary btn-lg" role="button">PARTICIPATE</a>
              			</p>
						</center>
					
					</div>

  </div>
  </div>
     
</body>

</html>