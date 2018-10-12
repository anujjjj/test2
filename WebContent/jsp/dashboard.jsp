<!DOCTYPE html>
<%@page import="javax.servlet.*" %>
<%@page import="java.util.*" %>
<%@page import="java.sql.*" %>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 

<html lang="en">

<head>

<style type="text/css">
        .tab {
    overflow: hidden;
    border: 1px solid #ccc;
    background-color: #f1f1f1;
    }

    /* Style the buttons inside the tab */
    .tab button {
        background-color: inherit;
        float: left;
        border: none;
        outline: none;
        cursor: pointer;
        padding: 14px 16px;
        transition: 0.3s;
        font-size: 17px;
    }

    /* Change background color of buttons on hover */
    .tab button:hover {
        background-color: #ddd;
    }

    /* Create an active/current tablink class */
    .tab button.active {
        background-color: #ccc;
    }

    /* Style the tab content */
    .tabcontent {
        display: none;
        padding: 6px 12px;
        border: 1px solid #ccc;
        border-top: none;
    }
    </style>
</head>
    
<body>
	<% 
		response.setHeader("Cache-Control","no-cache");
	    response.setHeader("Cache-Control","no-store");
	    response.setDateHeader("Expires", 0);
	    response.setHeader("Pragma","no-cache");
		String user=(String)session.getAttribute("username");
		String firstName=(String)session.getAttribute("firstName");
	    if(user==null)
	    {        
	    	response.sendRedirect("login.jsp");
	    }
	%>

	<jsp:include page="header.jsp"></jsp:include>

	<jsp:include page="navbar.jsp"></jsp:include>
	                                   
	  <sql:setDataSource var = "snapshot" driver = "com.mysql.jdbc.Driver"
         url = "jdbc:mysql://localhost:3306/dbms"
         user = "root"  password = "123" />
 

        
   <div id="wrapper">

     <div id="page-wrapper" style="margin-top: 15px;">
            
            <!-- /.row -->
            <div class="tab">
              <button class="tablinks" onclick="openCity(event, 'Upcoming_events')" id="defaultOpen">Upcoming Events</button>
              <button class="tablinks" onclick="openCity(event, 'Your Interests Related Events')">Your Interests Related Events</button>
           <button class="tablinks" onclick="openCity(event, 'All_events') ">All Events</button>           </div>

            <div id="Upcoming_events" class="tabcontent">
              <div class="panel panel-default">
                        <div class="panel-heading">
                            <i class="fa fa-clock-o fa-fw"></i> Upcoming Events
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                           <sql:query dataSource = "${snapshot}" var = "result2">
         SELECT einfo,eventId,eventName from Event where DateDiff(startDate,curdate()) between 0 and 120;
      </sql:query>
                         <% for(int i=0;i<1;i++){ %> 
                          <c:forEach var = "row" items = "${result2.rows}">                                  
                       
                            <ul class="timeline" >
                                        
                                <a href="/test2/Event?eventId=${row.eventId}" >	                        
                                <li class="timeline-inverted" style="display: inline; padding-left: 55px;">
                                
                                    <div class="timeline-badge success" style="margin-top: 20px;"><i class="fa fa-graduation-cap"></i>
                                    </a>
                                    </div>                                    
                                    <div class="timeline-panel" style="width: 93%;" >
                                        <div class="timeline-heading">
     		
                                            <h4 class="timeline-title">  <c:out value = "${row.eventName}"/></h4>
                                        </div>
                                        <div class="timeline-body">
        
      
           

     
                                            <p>  <c:out value = "${row.einfo}"/></p>
                                        </div>
                                    </div>
                                    
                                </li>
								</a>
                               
                            </ul>
                                                    </c:forEach>
 
                                                   <%  }%>
                        </div>
                        <!-- /.panel-body -->
                    </div>
            </div>

            <div id="Your Interests Related Events" class="tabcontent">
              <div class="panel panel-default">
                        <div class="panel-heading">
                            <i class="fa fa-clock-o fa-fw"></i> Your Interests Related Events
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                        <sql:query dataSource = "${snapshot}" var = "result1">
         select eventId,A.Interest_idInterest,eventName,einfo,info from Event_has_Interest as A join Student_has_Interest as B on B.Interest_idInterest  = A.Interest_idInterest  join Event as C on C.eventId = A.Event_eventId where Student_id = "I2K16102145";
         
      </sql:query>
                         <%for(int i=0;i<1;i++){ %> 
                          <c:forEach var = "row" items = "${result1.rows}">                                  
                       
                            <ul class="timeline" >
                            
                                
                                <a href="/test2/Event?eventId=${row.eventId}&Interest_idInterest=${row.Interest_idInterest}" >
                                <li class="timeline-inverted" style="display: inline; padding-left: 55px;">
                                    
                                    <div class="timeline-badge success" style="margin-top: 20px;"><i class="fa fa-graduation-cap"></i>
                                    </a> 
                                    </div>
                                    
                                    <div class="timeline-panel" style="width: 93%;" >
                                    
                                        <div class="timeline-heading">
     									     									
                                                <h4 class="timeline-title">  <c:out value = "${row.eventName}"/></h4>
                                           
                                        </div>                                        
                                        <div class="timeline-body">
     
                                            <p>  <c:out value = "${row.einfo}"/></p>
                                            <p>  <c:out value = "${row.info}"/></p>
                                        </div>
                                    </div>                                   
                                   	</a>
                                </li>
								</a>
                               
                            </ul>
                                                    </c:forEach>
 
                                                   <%  }%>
                            
                        </div>
                        <!-- /.panel-body -->
                    </div>
            </div>

            <div id="All_events" class="tabcontent">
              <div class="panel panel-default">
                        <div class="panel-heading">
                         <i class="fa fa-clock-o fa-fw"></i> All Events
                        </div>
                        <!-- /.panel-heading -->
                  
                       <div class="panel-body">
                        <sql:query dataSource = "${snapshot}" var = "result">
         SELECT einfo,eventName,eventId from Event;
      </sql:query>
                         <%for(int i=0;i<1;i++){ %> 
                          <c:forEach var = "row" items = "${result.rows}">                                  
                       
                            <ul class="timeline" >
                                <a href="/test2/Event?eventId=${row.eventId}" >
                                <li class="timeline-inverted" style="display: inline; padding-left: 55px;">
                                    <div class="timeline-badge success" style="margin-top: 20px;"><i class="fa fa-graduation-cap"></i>
                                    </a>
                                    </div>
                                    <div class="timeline-panel" style="width: 93%;" >
                                        <div class="timeline-heading">
     		
                                            <h4 class="timeline-title">  <c:out value = "${row.eventName}"/></h4>
                                        </div>
                                        <div class="timeline-body">
        
      
           

     
                                            <p>  <c:out value = "${row.einfo}"/></p>
                                        </div>
                                    </div>
                                </li>

                               
                            </ul>
                                                    </c:forEach>
 
                                                   <%  }%>
                            
						</div>
                        <!-- /.panel-body -->
                    </div>
                  
             </div>
            
			</div>
        <!-- /#page-wrapper -->

    </div>
    <!-- /#wrapper -->

<script>

    function openCity(evt, cityName) {
    var i, tabcontent, tablinks;
    tabcontent = document.getElementsByClassName("tabcontent");
    for (i = 0; i < tabcontent.length; i++) {
        tabcontent[i].style.display = "none";
    }
    tablinks = document.getElementsByClassName("tablinks");
    for (i = 0; i < tablinks.length; i++) {
        tablinks[i].className = tablinks[i].className.replace(" active", "");
    }
    document.getElementById(cityName).style.display = "block";
    evt.currentTarget.className += " active";
    
    
}

// Get the element with id="defaultOpen" and click on it
document.getElementById("defaultOpen").click();


</script>
     
</body>

</html>
