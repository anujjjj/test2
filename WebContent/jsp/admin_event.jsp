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
        <div id="page-wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Tables</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            <div class="row">
                        <label for="my_checkbox">
                           
						<h4 style="padding-left:15px;"><span class="fa fa-plus-circle"></span>   Volunteers</h4>
					    </label>

					<input type="checkbox" id="my_checkbox" style="display:none">
					<div id="hidden">
						<div id="VOLUNTEERS" class="tabcontent">


                          <div class="panel-body">
                            <table width="100%" class="table table-striped table-bordered table-hover" id="vol_table">
                                <thead>
                                    <tr>
                                        <th>First Name</th>
                                        <th>Last Name</th>
                                        <th>Email id</th>
                                        <th>Phone no</th>
                                        <th>Yes/No</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr class="odd gradeX">
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td class="center"></td>
                                        <td class="center"></td>
                                    </tr>
                                    <tr class="even gradeC">
                                         <td></td>
                                        <td></td>
                                        <td></td>
                                        <td class="center"></td>
                                        <td class="center"></td>
                                    </tr>
                                 </tbody>
                            </table>
                            <!-- /.table-responsive -->
                            
                          </div>
                        </div>
					</div>
            </div>
            
            
            <div class="row">
                        <label for="my_checkbox1">
						<h4 style="padding-left:15px;"><span class="fa fa-plus-circle"></span>   Participants</h4>
					    </label>

					<input type="checkbox" id="my_checkbox1" style="display:none">
					<div id="hidden">
						<div id="PARTICIPANTS" class="tabcontent">


                          <div class="panel-body">
                            <table width="100%" class="table table-striped table-bordered table-hover" id="vol_table">
                                <thead>
                                    <tr>
                                        <th>First Name</th>
                                        <th>Last Name</th>
                                        <th>Email id</th>
                                        <th>Phone no</th>
                                        <th>Yes/No</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr class="odd gradeX">
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td class="center"></td>
                                        <td class="center"></td>
                                    </tr>
                                    <tr class="even gradeC">
                                         <td></td>
                                        <td></td>
                                        <td></td>
                                        <td class="center"></td>
                                        <td class="center"></td>
                                    </tr>
                                 </tbody>
                            </table>
                            <!-- /.table-responsive -->
                            
                          </div>
                        </div>
					</div>
            </div>
            
            
            <div class="row">
                        <label for="my_checkbox2">
						<h4 style="padding-left:15px;"><span class="fa fa-plus-circle"></span>   Volunteer final list</h4>
					    </label>

					<input type="checkbox" id="my_checkbox2" style="display:none">
					<div id="hidden">
						<div id="PARTICIPANTS" class="tabcontent">


                          <div class="panel-body">
                            <table width="100%" class="table table-striped table-bordered table-hover" id="vol_table">
                                <thead>
                                    <tr>
                                        <th>First Name</th>
                                        <th>Last Name</th>
                                        <th>Email id</th>
                                        <th>Phone no</th>
                                        <th>Yes/No</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr class="odd gradeX">
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td class="center"></td>
                                        <td class="center"></td>
                                    </tr>
                                    <tr class="even gradeC">
                                         <td></td>
                                        <td></td>
                                        <td></td>
                                        <td class="center"></td>
                                        <td class="center"></td>
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
						<h4 style="padding-left:15px;"><span class="fa fa-plus-circle"></span>   Participants final list</h4>
					    </label>

					<input type="checkbox" id="my_checkbox3" style="display:none">
					<div id="hidden">
						<div id="PARTICIPANTS" class="tabcontent">


                          <div class="panel-body">
                            <table width="100%" class="table table-striped table-bordered table-hover" id="vol_table">
                                <thead>
                                    <tr>
                                        <th>First Name</th>
                                        <th>Last Name</th>
                                        <th>Email id</th>
                                        <th>Phone no</th>
                                        <th>Yes/No</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr class="odd gradeX">
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td class="center"></td>
                                        <td class="center"></td>
                                    </tr>
                                    <tr class="even gradeC">
                                         <td></td>
                                        <td></td>
                                        <td></td>
                                        <td class="center"></td>
                                        <td class="center"></td>
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
						<h4 style="padding-left:15px;"><span class="fa fa-plus-circle"></span>   Edit event details</h4>
					    </label>

					<input type="checkbox" id="my_checkbox4" style="display:none">
					<div id="hidden">
						<div id="PARTICIPANTS" class="tabcontent">


                          <div class="panel-body">
                            <table width="100%" class="table table-striped table-bordered table-hover" id="vol_table">
                                <thead>
                                    <tr>
                                        <th>First Name</th>
                                        <th>Last Name</th>
                                        <th>Email id</th>
                                        <th>Phone no</th>
                                        <th>Yes/No</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr class="odd gradeX">
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td class="center"></td>
                                        <td class="center"></td>
                                    </tr>
                                    <tr class="even gradeC">
                                         <td></td>
                                        <td></td>
                                        <td></td>
                                        <td class="center"></td>
                                        <td class="center"></td>
                                    </tr>
                                 </tbody>
                            </table>
                            <!-- /.table-responsive -->
                            
                          </div>
                        </div>
					</div>
            </div>
        </div>
        <!-- /#page-wrapper -->

    </div>
   

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


