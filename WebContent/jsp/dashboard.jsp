<!DOCTYPE html>
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

<jsp:include page="header.jsp"></jsp:include>

	<jsp:include page="navbar.jsp"></jsp:include>
   <div id="wrapper">

     <div id="page-wrapper" style="margin-top: 15px;">
            
            <!-- /.row -->
            <div class="tab">
              <button class="tablinks" onclick="openCity(event, 'Upcoming_events')" id="defaultOpen">Upcoming Events</button>
              <button class="tablinks" onclick="openCity(event, 'Ongoing_events')">Ongoing Events</button>
              <button class="tablinks" onclick="openCity(event, 'All_events')">All Events</button>
            </div>

            <div id="Upcoming_events" class="tabcontent">
              <div class="panel panel-default">
                        <div class="panel-heading">
                            <i class="fa fa-clock-o fa-fw"></i> Upcoming Events
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            <ul class="timeline" >
                                
                                <li class="timeline-inverted" style="display: inline; padding-left: 55px;">
                                    <div class="timeline-badge success" style="margin-top: 20px;"><i class="fa fa-graduation-cap"></i>
                                    </div>
                                    <div class="timeline-panel" style="width: 93%;" >
                                        <div class="timeline-heading">
                                            <h4 class="timeline-title">Lorem ipsum dolor</h4>
                                        </div>
                                        <div class="timeline-body">
                                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Deserunt obcaecati, quaerat tempore officia voluptas debitis consectetur culpa amet, accusamus dolorum fugiat, animi dicta aperiam, enim incidunt quisquam maxime neque eaque.</p>
                                        </div>
                                    </div>
                                </li>

                                <li class="timeline-inverted" style="display: inline; padding-left: 55px;">
                                    <div class="timeline-badge success" style="margin-top: 20px;"><i class="fa fa-graduation-cap"></i>
                                    </div>
                                    <div class="timeline-panel" style="width: 93%;" >
                                        <div class="timeline-heading">
                                            <h4 class="timeline-title">Lorem ipsum dolor</h4>
                                        </div>
                                        <div class="timeline-body">
                                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Deserunt obcaecati, quaerat tempore officia voluptas debitis consectetur culpa amet, accusamus dolorum fugiat, animi dicta aperiam, enim incidunt quisquam maxime neque eaque.</p>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </div>
                        <!-- /.panel-body -->
                    </div>
            </div>

            <div id="Ongoing_events" class="tabcontent">
              <div class="panel panel-default">
                        <div class="panel-heading">
                            <i class="fa fa-clock-o fa-fw"></i> Ongoing Events
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            <ul class="timeline" >
                                
                                <li class="timeline-inverted" style="display: inline; padding-left: 55px;">
                                    <div class="timeline-badge success" style="margin-top: 20px;"><i class="fa fa-graduation-cap"></i>
                                    </div>
                                    <div class="timeline-panel" style="width: 93%;" >
                                        <div class="timeline-heading">
                                            <h4 class="timeline-title">Lorem ipsum dolor</h4>
                                        </div>
                                        <div class="timeline-body">
                                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Deserunt obcaecati, quaerat tempore officia voluptas debitis consectetur culpa amet, accusamus dolorum fugiat, animi dicta aperiam, enim incidunt quisquam maxime neque eaque.</p>
                                        </div>
                                    </div>
                                </li>

                                <li class="timeline-inverted" style="display: inline; padding-left: 55px;">
                                    <div class="timeline-badge success" style="margin-top: 20px;"><i class="fa fa-graduation-cap"></i>
                                    </div>
                                    <div class="timeline-panel" style="width: 93%;" >
                                        <div class="timeline-heading">
                                            <h4 class="timeline-title">Lorem ipsum dolor</h4>
                                        </div>
                                        <div class="timeline-body">
                                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Deserunt obcaecati, quaerat tempore officia voluptas debitis consectetur culpa amet, accusamus dolorum fugiat, animi dicta aperiam, enim incidunt quisquam maxime neque eaque.</p>
                                        </div>
                                    </div>
                                </li>
                            </ul>
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
                            <ul class="timeline" >
                                
                                <li class="timeline-inverted" style="display: inline; padding-left: 55px;">
                                    <div class="timeline-badge success" style="margin-top: 20px;"><i class="fa fa-graduation-cap"></i>
                                    </div>
                                    <div class="timeline-panel" style="width: 93%;" >
                                        <div class="timeline-heading">
                                            <h4 class="timeline-title">Lorem ipsum dolor</h4>
                                        </div>
                                        <div class="timeline-body">
                                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Deserunt obcaecati, quaerat tempore officia voluptas debitis consectetur culpa amet, accusamus dolorum fugiat, animi dicta aperiam, enim incidunt quisquam maxime neque eaque.</p>
                                        </div>
                                    </div>
                                </li>

                                <li class="timeline-inverted" style="display: inline; padding-left: 55px;">
                                    <div class="timeline-badge success" style="margin-top: 20px;"><i class="fa fa-graduation-cap"></i>
                                    </div>
                                    <div class="timeline-panel" style="width: 93%;" >
                                        <div class="timeline-heading">
                                            <h4 class="timeline-title">Lorem ipsum dolor</h4>
                                        </div>
                                        <div class="timeline-body">
                                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Deserunt obcaecati, quaerat tempore officia voluptas debitis consectetur culpa amet, accusamus dolorum fugiat, animi dicta aperiam, enim incidunt quisquam maxime neque eaque.</p>
                                        </div>
                                    </div>
                                </li>
                            </ul>
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
