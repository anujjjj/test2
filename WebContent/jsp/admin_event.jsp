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

<sql:setDataSource var = "snapshot" driver = "com.mysql.jdbc.Driver"
         url = "jdbc:mysql://localhost:3306/dbms"
         user = "root"  password = "123"/>

        
 
    
            
        
         

	
	 <sql:query dataSource = "${snapshot}" var = "result1">
             SELECT User.firstName,User.lastName,User.email,User.phone, Student_has_Event_has_Interest.Event_has_Interest_Event_eventId  FROM Student_has_Event_has_Interest INNER JOIN User ON Student_has_Event_has_Interest.Student_id=User.id where Student_has_Event_has_Interest.managedparticipate=0 and Student_has_Event_has_Interest.reqacceptdecline=2;
         </sql:query>
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
                                   
         
         <c:forEach var = "row" items = "${result1.rows}">
            <tr>
				               <td> <c:out value = "${row.firstName}"/></td>
				               <td> <c:out value = "${row.lastName}"/></td>
                              <td> <c:out value = "${row.email}"/></td>
                              <td> <c:out value = "${row.phone}"/></td>
                               <td><input name="select" type="radio" style="margin-left:15%">
                                        <input name="select" type="radio" style="margin-left:17%"><input name="select" type="radio" style="margin-left:15%">
                               </td>
                              
               
        
       			  </c:forEach>
                                    </tr>
                                    
                                   
                                 </tbody>
                            </table>
                            <!-- /.table-responsive -->
                                                        <center><input type="submit" value="Submit"></center>
                            
                          </div>
                        </div>
					</div>
            </div>
            
             <sql:query dataSource = "${snapshot}" var = "result">
             SELECT User.firstName,User.lastName,User.email,User.phone, Student_has_Event_has_Interest.Event_has_Interest_Event_eventId  FROM Student_has_Event_has_Interest INNER JOIN User ON Student_has_Event_has_Interest.Student_id=User.id where Student_has_Event_has_Interest.managedparticipate=1 and Student_has_Event_has_Interest.reqacceptdecline=2;
         </sql:query>
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
         
         <c:forEach var = "row" items = "${result.rows}">
            <tr>
				               <td> <c:out value = "${row.firstName}"/></td>
				               <td> <c:out value = "${row.lastName}"/></td>
                              <td> <c:out value = "${row.email}"/></td>
                              <td> <c:out value = "${row.phone}"/></td>
<td><input name="select" type="radio" style="margin-left:15%">
                                        <input name="select" type="radio" style="margin-left:17%"><input name="select" type="radio" style="margin-left:15%">
                               </td>                              
               
        
       			  </c:forEach>
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
                        <label for="my_checkbox2"> 
						<h4 style="padding-left:15px;"><span toggle="#my_checkbox2" class="fa fa-plus-circle field-icon toggle-my_checkbox2">   Volunteers final list</span></h4>
					    </label>

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
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        
                                    </tr>
                                    <tr class="even gradeC">
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        
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
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        
                                    </tr>
                                    <tr class="even gradeC">
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        
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


