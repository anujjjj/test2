	<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <meta name="viewport" content="width=device-width, initial-scale=1">
<style>
* {box-sizing: border-box}
body {font-family: "Lato", sans-serif;}

/* Style the tab */
.tab {
    float: left;
    border: 1px solid #ccc;
    background-color: #f1f1f1;
    width: 15%;
    height: 300px;
}

/* Style the buttons inside the tab */
.tab button {
    display: block;
    background-color: inherit;
    color: black;
    padding: 22px 16px;
    width: 100%;
    border: none;
    outline: none;
    text-align: left;
    cursor: pointer;
    transition: 0.3s;
    font-size: 17px;
}

/* Change background color of buttons on hover */
.tab button:hover {
    background-color: #ddd;
}

/* Create an active/current "tab button" class */
.tab button.active {
    background-color: #ccc;
}

/* Style the tab content */
.tabcontent {
    float: left;
    padding: 0px 12px;
    border: 1px solid #ccc;
    width: 85%;
    border-left: none;
    height: 300px;
}
    
    #hidden {
			display: none;
			height: auto;
			/* background: red; */
		}

		:checked+#hidden {
			display: block;
            
		}
    
    
</style>



</head>
    
<body>


    
       <jsp:include page="header.jsp"></jsp:include>

	<jsp:include page="navbar.jsp"></jsp:include>
	
	<%
		String eventId = request.getParameter("eventId");
	String idInterest = request.getParameter("idInterest");
	%>
         
<sql:setDataSource var = "snapshot" driver = "com.mysql.jdbc.Driver"
         url = "jdbc:mysql://localhost:3306/dbms"
         user = "root"  password = "123"/>
	
             
        <div id="page-wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Tables</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            
            <div class="row" >
                        <label for="my_checkbox">
                           
						<h4 style="padding-left:15px;"><span toggle="#my_checkbox" class="fa fa-plus-circle field-icon toggle-my_checkbox">   Volunteers</span></h4>
					    </label>

					<input type="checkbox" id="my_checkbox" style="display:none">
					<div id="hidden" >
						<div  class="tabcontent" style="overflow-y:scroll;">


                          <div class="panel-body" >
                            <table width="100%" class="table table-striped table-bordered table-hover" id="vol_table">
                                <thead>
                                    <tr>
                                        <th>First Name</th>
                                        <th>Last Name</th>
                                        <th>Email id</th>
                                        <th>Phone no</th>
                                        <th>Accept | Pending | Reject</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr class="odd gradeX">
                                   
         
<% 

try {
							Class.forName("com.mysql.jdbc.Driver");
						 // loads driver
						
						Connection c = DriverManager.getConnection("jdbc:mysql://localhost:3306/dbms", "root", "123"); // gets a new connection
						
						
						PreparedStatement ps1 = c.prepareStatement("select u.firstName,u.lastName,u.email,u.phone,s.Event_has_Interest_Event_eventId,s.Event_has_Interest_Interest_idInterest from Student_has_Event_has_Interest as s inner join User as u on s.Student_id=u.id where s.Event_has_Interest_Event_eventId=? and s.Event_has_Interest_Interest_idInterest=? and s.managedparticipate = 0 and s.reqacceptdecline=2");
						ps1.setString(1, eventId);
						ps1.setString(2, idInterest);
						
						
						ResultSet rs1 = ps1.executeQuery();
				
								
						while(rs1.next()) {
							String  firstName= rs1.getString("firstName");
							String  lastName= rs1.getString("lastName");
							String  phone= rs1.getString("phone");			
							String  email= rs1.getString("email");			
							
%>
				            <tr>
				            					
								               <td>${firstName}</td>
								               <td> ${lastName}</td>
				                              <td>${email}</td>
				                              <td>${phone}</td>
				                               <td><input name="select" type="radio" style="margin-left:15%">
				                                        <input name="select" type="radio" style="margin-left:17%">
				                                        <input name="select" type="radio" style="margin-left:15%">
				                               </td>				               				
							
<% 
							ps1.close();
						
//							response.sendRedirect("./jsp/event.jsp");
						}	
						
	
						c.close();
}	catch (ClassNotFoundException | SQLException e) {
	
	// TODO Auto-generated catch block				
	e.printStackTrace();
}	

    
            
						%>

                                    </tr>
                                    
                                   
                                 </tbody>
                            </table>
                            <!-- /.table-responsive -->
                        <center><input type="submit" value="Submit"></center>
                            
                          </div>
                        </div>
					</div>
            </div>
            
        
            
            <div class="row">
                        <label for="my_checkbox1">
						<h4 style="padding-left:15px;"><span toggle="#my_checkbox1" class="fa fa-plus-circle field-icon toggle-my_checkbox1">   Participants</span></h4>
					    </label>

					<input type="checkbox" id="my_checkbox1" style="display:none">
					<div id="hidden">
						<div  class="tabcontent" style="overflow-y:scroll;">


                          <div class="panel-body">
                            <table width="100%" class="table table-striped table-bordered table-hover" id="vol_table">
                                <thead>
                                    <tr>
                                        <th>First Name</th>
                                        <th>Last Name</th>
                                        <th>Email id</th>
                                        <th>Phone no</th>
                                        <th>Accept | Pending | Reject</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr class="odd gradeX">
         
     <% 

try {
							Class.forName("com.mysql.jdbc.Driver");
						 // loads driver
						
						Connection c = DriverManager.getConnection("jdbc:mysql://localhost:3306/dbms", "root", "123"); // gets a new connection
						
						
						PreparedStatement ps2 = c.prepareStatement("select u.firstName,u.lastName,u.email,u.phone,s.Event_has_Interest_Event_eventId,s.Event_has_Interest_Interest_idInterest from Student_has_Event_has_Interest as s inner join User as u on s.Student_id=u.id where s.Event_has_Interest_Event_eventId=? and s.Event_has_Interest_Interest_idInterest=? and s.managedparticipate = 1 and s.reqacceptdecline=2");
						ps2.setString(1, eventId);
						ps2.setString(2, idInterest);
						
						
						ResultSet rs2 = ps2.executeQuery();
				
							 
					
				
						while(rs2.next()) {
							String  firstName= rs2.getString("firstName");
							String  lastName= rs2.getString("lastName");
							String  phone= rs2.getString("phone");			
							String  email= rs2.getString("email");			
							
%>
          <tr>
				            					
								               <td>${firstName}</td>
								               <td> ${lastName}</td>
				                              <td>${email}</td>
				                              <td>${phone}</td>
				                               <td><input name="select" type="radio" style="margin-left:15%">
				                                        <input name="select" type="radio" style="margin-left:17%">
				                                        <input name="select" type="radio" style="margin-left:15%">
				                               </td>
				               				

							
 <% 
							ps2.close();
						
//							response.sendRedirect("./jsp/event.jsp");
						}	
						
	
						c.close();
	}	catch (ClassNotFoundException | SQLException e) {
	
	// TODO Auto-generated catch block				
	e.printStackTrace();
}	

    
            
						%>

                                    </tr>
                                    
                                   
                                      </tbody>
                            </table>
                            <!-- /.table-responsive -->
                               <center><input type="submit"  value="Submit"></center>
                            
                          </div>
                        </div>
					</div>
            </div>
            
            
            <div class="row">
                        <label for="my_checkbox2"> 
						<h4 style="padding-left:15px;"><span toggle="#my_checkbox2" class="fa fa-plus-circle field-icon toggle-my_checkbox2">   Volunteers final list</span></h4>
					    </label>
					    	 <sql:query dataSource = "${snapshot}" var = "result2">
             select u.firstName,u.lastName,u.email,u.phone,s.Event_has_Interest_Event_eventId,s.Event_has_Interest_Interest_idInterest from Student_has_Event_has_Interest as s inner join User as u on s.Student_id=u.id where s.Event_has_Interest_Event_eventId="abhi" and s.Event_has_Interest_Interest_idInterest="dram" and s.managedparticipate = 0 and s.reqacceptdecline=1;
             
                   </sql:query>

					<input type="checkbox" id="my_checkbox2" style="display:none">
					<div id="hidden">
						<div  class="tabcontent" style="overflow-y:scroll;">


                          <div class="panel-body">
                            <table width="100%" class="table table-striped table-bordered table-hover" id="vol_table">
                                <thead>
                                    <tr>
                                        <th>First Name</th>
                                        <th>Last Name</th>
                                        <th>Email id</th>
                                        <th>Phone no</th>
                                        
                                    </tr>
                                </thead>
                         
                                <tbody>
                         	
                                    <tr class="odd gradeX">
                            <c:forEach var = "row2" items = "${result2.rows}" >
                                       <td> <c:out value = "${row2.firstName}"/></td>
				               <td> <c:out value = "${row2.lastName}"/></td>
                              <td> <c:out value = "${row2.email}"/></td>
                              <td> <c:out value = "${row2.phone}"/></td>
							
        
       			  </c:forEach>
                                        
                                    </tr>
                                   
                                 </tbody>
                            </table>
                            <!-- /.table-responsive -->
                            
                          </div>
                        </div>
					</div>
            </div>
            
            <div class="row">
                        <label for="my_checkbox3">
						<h4 style="padding-left:15px;"><span toggle="#my_checkbox3" class="fa fa-plus-circle field-icon toggle-my_checkbox3">   Participants final list</span></h4>
					    </label>
					     <sql:query dataSource = "${snapshot}" var = "result3">
             select u.firstName,u.lastName,u.email,u.phone,s.Event_has_Interest_Event_eventId,s.Event_has_Interest_Interest_idInterest from Student_has_Event_has_Interest as s inner join User as u on s.Student_id=u.id where s.Event_has_Interest_Event_eventId="abhi" and s.Event_has_Interest_Interest_idInterest="dram" and s.managedparticipate = 1 and s.reqacceptdecline=1;
             
                   </sql:query>
					    

					<input type="checkbox" id="my_checkbox3" style="display:none">
					<div id="hidden">
						<div  class="tabcontent" style="overflow-y:scroll;">


                          <div class="panel-body">
                            <table width="100%" class="table table-striped table-bordered table-hover" id="vol_table">
                                <thead>
                                    <tr>
                                        <th>First Name</th>
                                        <th>Last Name</th>
                                        <th>Email id</th>
                                        <th>Phone no</th>
                                        
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr class="odd gradeX">
                            <c:forEach var = "row3" items = "${result3.rows}" >
                                       <td> <c:out value = "${row3.firstName}"/></td>
				               <td> <c:out value = "${row3.lastName}"/></td>
                              <td> <c:out value = "${row3.email}"/></td>
                              <td> <c:out value = "${row3.phone}"/></td>
							
        
       			  </c:forEach>
                                    </tr>
                                  
                                 </tbody>
                            </table>
                            <!-- /.table-responsive -->
                            
                          </div>
                        </div>
					</div>
            </div>
            
            
            <div class="row">
                        <label for="my_checkbox4">
						<h4 style="padding-left:15px;"><span toggle="#my_checkbox4" class="fa fa-plus-circle field-icon toggle-my_checkbox4">   Edit event details</span></h4>
					    </label>

					<input type="checkbox" id="my_checkbox4" style="display:none">
					<div id="hidden">
						<div  class="tabcontent" style="overflow-y:scroll;">


                          <div class="panel-body">
                             <form>
			                            	 <table width="100%" class="table table-striped table-bordered table-hover" id="vol_table">
			                                <tbody>
	                                    <tr>
		                                        <td>Event start date</td>
			                                        <td><input type="date"></td>
			                                    </tr>
		                                    <tr>
		                                        <td>Event end date</td>
	                                        <td><input type="date"></td>
		                                    </tr>
		                                    <tr>
		                                        <td>Last date for Participating</td>
			                                        <td><input type="date"></td>
			                                    </tr>
			                                    <tr>
			                                        <td>Last date for Volunteering</td>
			                                        <td><input type="date"></td>
			                                    </tr>
			                                    <tr>
			                                        <td>Event Information</td>
			                                        <td>
			                                        <textarea rows="4" cols="50">
												</textarea>
													</td>
			                                    </tr>
		                                    
	                                 </tbody>
			                            </table>
			                            		<center><input type="submit" value="Edit Details"></center>
			                           		 
			                            </form>
                            
                            
                          </div>
                        </div>
					</div>
            </div>
        </div>
        <!-- /#page-wrapper -->

  
   
 <div>
        <jsp:include page="footer.jsp"></jsp:include>
    </div>
	


<script type="text/javascript">
        $(".toggle-my_checkbox").click(function(){$(this).toggleClass("fa-plus-circle fa-minus-circle");});
        $(".toggle-my_checkbox1").click(function(){$(this).toggleClass("fa-plus-circle fa-minus-circle");});
        $(".toggle-my_checkbox2").click(function(){$(this).toggleClass("fa-plus-circle fa-minus-circle");});
        $(".toggle-my_checkbox3").click(function(){$(this).toggleClass("fa-plus-circle fa-minus-circle");});
        $(".toggle-my_checkbox4").click(function(){$(this).toggleClass("fa-plus-circle fa-minus-circle");});
    </script>


</body>
</html> 


