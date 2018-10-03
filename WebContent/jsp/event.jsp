<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>PIConnecT</title>
</head>
<body>

	<%
		int event_id =Integer.parseInt(request.getParameter("event_id")); 
		String eventName = (String)request.getAttribute("eventName");
		String introduction = (String)request.getAttribute("introduction");
		System.out.println(eventName);
	%>
		
	
	<h2>Event </h2>
	
	<%= event_id %>
	<%= eventName %>
	<%= introduction %>

</body>
</html>