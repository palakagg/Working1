<%@page import="com.beans.Transaction"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>Member | Libra Application</title>
  <!-- plugins:css -->
  <link rel="stylesheet" href="vendors/iconfonts/mdi/css/materialdesignicons.min.css">
  <link rel="stylesheet" href="vendors/css/vendor.bundle.base.css">
  <!-- endinject -->
  <!-- inject:css -->
  <link rel="stylesheet" href="css/style.css">
  <!-- endinject -->
</head>
<body>
  <%
	HttpSession session2=request.getSession(false);
	String name = (String) session2.getAttribute("name");
%>
 <div class="container-scroller">
    <!-- partial:partials/_navbar.html -->
    <nav class="navbar default-layout-navbar col-lg-12 col-12 p-0 fixed-top d-flex flex-row" > <!--change logo-->
      <div class="text-center navbar-brand-wrapper d-flex align-items-center justify-content-center">
        <a class="navbar-brand brand-logo" href="index.jsp"><img src="images/Libra-text-logo-white.png" alt="logo"/></a>
        <!-- <a class="navbar-brand brand-logo-mini" href="index.jsp"><img src="images/logo-mini.svg" alt="logo"/></a> -->
      </div>
      <div class="navbar-menu-wrapper d-flex align-items-stretch">
        <!-- <div class="search-field d-none d-md-block">
          <form class="d-flex align-items-center h-100" action="index.jsp">
            <div class="input-group">
              <div class="input-group-prepend bg-transparent">
                  <i class="input-group-text border-0 mdi mdi-magnify"></i>                
              </div>
              <input type="text" class="form-control bg-transparent border-0" placeholder="Search">
            </div>
          </form>
        </div> -->
        <ul class="navbar-nav navbar-nav-right">

          <li class="nav-item d-none d-lg-block full-screen-link">
            <a class="nav-link">
              <i class="mdi mdi-fullscreen" id="fullscreen-button"></i>
            </a>
          </li>

          
          <li class="nav-item nav-logout d-none d-lg-block">
            <a class="nav-link" href="logout">
              <i class="mdi mdi-power"></i>
            </a>
          </li>

        </ul>
       <!-- <button class="navbar-toggler navbar-toggler-right d-lg-none align-self-center" type="button" data-toggle="offcanvas">
          <span class="mdi mdi-menu"></span>
        </button>-->
      </div>
    </nav>
    <!-- partial -->
    <div class="container-fluid page-body-wrapper">
      <!-- partial:partials/_sidebar.html -->
     <nav class="sidebar sidebar-offcanvas" id="sidebar">
     <div id="nav">
        <ul id="nav" class="nav">
        
          <li class="nav-item nav-profile">
            <a href="#" class="nav-link">
              <div class="nav-profile-image">
                <img src="images/Employee.png" alt="profile">
                <span class="login-status online"></span> <!--change to offline or busy as needed-->              
              </div>
              <div class="nav-profile-text d-flex flex-column">
                <span class="font-weight-bold mb-2">WELCOME <%=name %></span>
                <!-- <span class="text-secondary text-small">Training Assistant</span> -->
              </div>
              <i class="mdi mdi-bookmark-check text-success nav-profile-badge"></i>
            </a>
          </li>
          <li class="nav-item" style="background: #242424;"> 
            <a class="nav-link" href="show_company">
              <span class="menu-title">Dashboard</span>
              <i class="mdi mdi-home menu-icon"></i>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="CompanyShortage">
              <span class="menu-title">Shortages</span>
              <i class="mdi mdi-arrow-bottom-right menu-icon"></i>
             <!-- <i class="menu-arrow"></i> -->
              
            </a>
           <!-- <div class="collapse" id="ui-basic">
              <ul class="nav flex-column sub-menu">
                <li class="nav-item"> <a class="nav-link" href="pages/ui-features/buttons.html">Buttons</a></li>
                <li class="nav-item"> <a class="nav-link" href="pages/ui-features/typography.html">Typography</a></li>
              </ul>
            </div> -->
          </li>
		  <li class="nav-item"> 
            <a class="nav-link" href="borrow" >
              <span class="menu-title">Securities</span>
            <i class="mdi mdi-file-document menu-icon"></i>
            </a>
          </li>
          <li class="nav-item"> 
            <a class="nav-link" href="chart" >
              <span class="menu-title">Charts</span>
              <i class="mdi mdi-chart-bar menu-icon"></i>
             
            </a>
          </li>
        <!--  <li class="nav-item">
            <a class="nav-link" href="pages/icons/mdi.html">
              <span class="menu-title">Securities</span>
              <i class="mdi mdi-book-multiple menu-icon"></i>
            </a>
          </li>
         <li class="nav-item">
            <a class="nav-link" href="pages/forms/basic_elements.html">
              <span class="menu-title">Buy</span>
              <i class="mdi mdi-cart menu-icon"></i>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="pages/charts/chartjs.html">
              <span class="menu-title">Sell</span>
              <i class="mdi mdi-currency-eur menu-icon"></i>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="pages/tables/basic-table.html">
              <span class="menu-title">Tables</span>
              <i class="mdi mdi-table-large menu-icon"></i>
            </a>
          </li> -->
          <!-- <li class="nav-item"> -->
            <!-- <a class="nav-link" data-toggle="collapse" href="#general-pages" aria-expanded="false" aria-controls="general-pages"> -->
              <!-- <span class="menu-title">Sample Pages</span> -->
              <!-- <i class="menu-arrow"></i> -->
              <!-- <i class="mdi mdi-medical-bag menu-icon"></i> -->
            <!-- </a> -->
            <!-- <div class="collapse" id="general-pages"> -->
              <!-- <ul class="nav flex-column sub-menu"> -->
                <!-- <li class="nav-item"> <a class="nav-link" href="pages/samples/blank-page.html"> Blank Page </a></li> -->
                <!-- <li class="nav-item"> <a class="nav-link" href="pages/samples/login.html"> Login </a></li> -->
                <!-- <li class="nav-item"> <a class="nav-link" href="pages/samples/register.html"> Register </a></li> -->
                <!-- <li class="nav-item"> <a class="nav-link" href="pages/samples/error-404.html"> 404 </a></li> -->
                <!-- <li class="nav-item"> <a class="nav-link" href="pages/samples/error-500.html"> 500 </a></li> -->
              <!-- </ul> -->
              <!-- </div> -->
          </li>
          <!-- <li class="nav-item sidebar-actions"> -->
            <!-- <span class="nav-link"> -->
              <!-- <div class="border-bottom"> -->
                <!-- <h6 class="font-weight-normal mb-3">Projects</h6>                 -->
              <!-- </div> -->
              <!-- <button class="btn btn-block btn-lg btn-gradient-primary mt-4">+ Add a project</button> -->
              <!-- <div class="mt-4"> -->
                <!-- <div class="border-bottom"> -->
                  <!-- <p class="text-secondary">Categories</p>                   -->
                <!-- </div> -->
                <!-- <ul class="gradient-bullet-list mt-4"> -->
                  <!-- <li>Free</li> -->
                  <!-- <li>Pro</li> -->
                <!-- </ul> -->
              <!-- </div> -->
            <!-- </span> -->
          <!-- </li> -->
        </ul>
      </nav>
      <!-- partial -->
      <div class="main-panel">
        <div class="content-wrapper">
          <!-- <div class="row"> -->
            <!-- <div class="col-12"> -->
              <!-- <span class="d-flex align-items-center purchase-popup"> -->
                <!-- <p>Like what you see? Check out our premium version for more.</p> -->
                <!-- <a href="https://github.com/BootstrapDash/PurpleAdmin-Free-Admin-Template" target="_blank" class="btn ml-auto download-button">Download Free Version</a> -->
                <!-- <a href="https://www.bootstrapdash.com/product/purple-bootstrap-4-admin-template/" target="_blank" class="btn purchase-button">Upgrade To Pro</a> -->
                <!-- <i class="mdi mdi-close popup-dismiss"></i> -->
              <!-- </span> -->
            <!-- </div> -->
          <!-- </div> -->
          <div class="page-header">
            <h3 class="page-title">
              <span class="page-title-icon bg-gradient-primary text-white mr-2">
                <i class="mdi mdi-home"></i>                 
              </span>
              Dashboard
            </h3>
            <!-- <nav aria-label="breadcrumb"> -->
              <!-- <ul class="breadcrumb"> -->
                <!-- <li class="breadcrumb-item active" aria-current="page"> -->
                  <!-- <span></span>Overview -->
                  <!-- <i class="mdi mdi-alert-circle-outline icon-sm text-primary align-middle"></i> -->
                <!-- </li> -->
              <!-- </ul> -->
            <!-- </nav> -->
          </div>
          <div class="row">
            <div class="col-lg-6 grid-margin stretch-card">
              <div class="card">
                <div class="card-body" >
                  <h4 class="card-title">TRANSACTION OF BOUGHT SECURITIES</h4>
                  
                  <%
					List<Transaction> list1 = (List<Transaction>)request.getAttribute("table1");
               		List<Transaction> list2 = (List<Transaction>)request.getAttribute("table2");
					%>
                  <table class="table table-dark">
                    <thead>
                      <tr>
                        <th>
                          S.NO
                        </th>
                        <th>
                          SECURITY NAME
                        </th>
                        <th>
                          QUANTITY
                        </th>
                        <th>
                          PRICE
                        </th>
                      </tr>
                    </thead>
                    <%
                    int i=0;
                    for(Transaction t : list1){
                    	i++;
                    %>
                    
                    <tbody>
                      <tr>
                        <td>
                     	<% out.println(i); %>
                        </td>
                        <td>
                          <%String sec=t.getSecurityId();
                          String name1=null;
                          if(sec.equals("S01")){
                           name1="Apple";}
                          else if(sec.equals("S02")){
                           name1="GE";}
                          else if(sec.equals("S03")){
                               name1="Walmart";}
                          else if(sec.equals("S04")){
                               name1="LinkedIn";}
                          else if(sec.equals("S05")){
                               name1="Facebook";}
                         
                         out.println(name1); %>
                        </td>
                        <td>
                          <% out.println(t.getQuantity()); %>
                        </td>
                        <td>
                          <% out.println(t.getPrice()); %>
                        </td>
                      </tr>
                      <% } %>
                    </tbody>
                  </table>
                </div>
              </div>
            </div>
			<div class="col-lg-6 grid-margin stretch-card">
              <div class="card">
                <div class="card-body" >
                  <h4 class="card-title">TRANSACTION OF SOLD SECURITIES</h4>
                  
                  <table class="table table-dark">
                    <thead>
                      <tr>
                        <th>
                          S.NO
                        </th>
                        <th>
                          SECURITY NAME
                        </th>
                        <th>
                          QUANTITY
                        </th>
                        <th>
                          PRICE
                        </th>
                      </tr>
                    </thead>
                    <%
                    int j=0;
                    for(Transaction t : list2){
                    	j++;
                    %>
                    
                    <tbody>
                      <tr>
                        <td>
                          <% out.println(j); %>
                        </td>
                        <td>
                       <% String sec=t.getSecurityId();
                           String name1=null;
                           if(sec.equals("S01")){
                            name1="Apple";}
                           else if(sec.equals("S02")){
                            name1="GE";}
                           else if(sec.equals("S03")){
                                name1="Walmart";}
                           else if(sec.equals("S04")){
                                name1="LinkedIn";}
                           else if(sec.equals("S05")){
                                name1="Facebook";}
                          
                          out.println(name1);%>
                          
                        </td>
                        <td>
                          <% out.println(t.getQuantity()); %>
                        </td>
                        <td>
                          <% out.println(t.getPrice()); %>
                        </td>
                      </tr>
                      <% } %>
                    </tbody>
                  </table>
                </div>
              </div>
            </div>
          <!-- <div class="row"> -->
            <!-- <div class="col-12 grid-margin"> -->
              <!-- <div class="card"> -->
                <!-- <div class="card-body"> -->
                  <!-- <h4 class="card-title">Recent Tickets</h4> -->
                  <!-- <div class="table-responsive"> -->
                    <!-- <table class="table"> -->
                      <!-- <thead> -->
                        <!-- <tr> -->
                          <!-- <th> -->
                            <!-- Assignee -->
                          <!-- </th> -->
                          <!-- <th> -->
                            <!-- Subject -->
                          <!-- </th> -->
                          <!-- <th> -->
                            <!-- Status -->
                          <!-- </th> -->
                          <!-- <th> -->
                            <!-- Last Update -->
                          <!-- </th> -->
                          <!-- <th> -->
                            <!-- Tracking ID -->
                          <!-- </th> -->
                        <!-- </tr> -->
                      <!-- </thead> -->
                      <!-- <tbody> -->
                        <!-- <tr> -->
                          <!-- <td> -->
                            <!-- <img src="images/faces/face1.jpg" class="mr-2" alt="image"> -->
                            <!-- David Grey -->
                          <!-- </td> -->
                          <!-- <td> -->
                            <!-- Fund is not recieved -->
                          <!-- </td> -->
                          <!-- <td> -->
                            <!-- <label class="badge badge-gradient-success">DONE</label> -->
                          <!-- </td> -->
                          <!-- <td> -->
                            <!-- Dec 5, 2017 -->
                          <!-- </td> -->
                          <!-- <td> -->
                            <!-- WD-12345 -->
                          <!-- </td> -->
                        <!-- </tr> -->
                        <!-- <tr> -->
                          <!-- <td> -->
                            <!-- <img src="images/faces/face2.jpg" class="mr-2" alt="image"> -->
                            <!-- Stella Johnson -->
                          <!-- </td> -->
                          <!-- <td> -->
                            <!-- High loading time -->
                          <!-- </td> -->
                          <!-- <td> -->
                            <!-- <label class="badge badge-gradient-warning">PROGRESS</label> -->
                          <!-- </td> -->
                          <!-- <td> -->
                            <!-- Dec 12, 2017 -->
                          <!-- </td> -->
                          <!-- <td> -->
                            <!-- WD-12346 -->
                          <!-- </td> -->
                        <!-- </tr> -->
                        <!-- <tr> -->
                          <!-- <td> -->
                            <!-- <img src="images/faces/face3.jpg" class="mr-2" alt="image"> -->
                            <!-- Marina Michel -->
                          <!-- </td> -->
                          <!-- <td> -->
                            <!-- Website down for one week -->
                          <!-- </td> -->
                          <!-- <td> -->
                            <!-- <label class="badge badge-gradient-info">ON HOLD</label> -->
                          <!-- </td> -->
                          <!-- <td> -->
                            <!-- Dec 16, 2017 -->
                          <!-- </td> -->
                          <!-- <td> -->
                            <!-- WD-12347 -->
                          <!-- </td> -->
                        <!-- </tr> -->
                        <!-- <tr> -->
                          <!-- <td> -->
                            <!-- <img src="images/faces/face4.jpg" class="mr-2" alt="image"> -->
                            <!-- John Doe -->
                          <!-- </td> -->
                          <!-- <td> -->
                            <!-- Loosing control on server -->
                          <!-- </td> -->
                          <!-- <td> -->
                            <!-- <label class="badge badge-gradient-danger">REJECTED</label> -->
                          <!-- </td> -->
                          <!-- <td> -->
                            <!-- Dec 3, 2017 -->
                          <!-- </td> -->
                          <!-- <td> -->
                            <!-- WD-12348 -->
                          <!-- </td> -->
                        <!-- </tr> -->
                      <!-- </tbody> -->
                    <!-- </table> -->
                  <!-- </div> -->
                <!-- </div> -->
              <!-- </div> -->
            <!-- </div> -->
          <!-- </div> -->
          <!-- <div class="row"> -->
            <!-- <div class="col-12 grid-margin stretch-card"> -->
              <!-- <div class="card"> -->
                <!-- <div class="card-body"> -->
                  <!-- <h4 class="card-title">Recent Updates</h4> -->
                  <!-- <div class="d-flex"> -->
                    <!-- <div class="d-flex align-items-center mr-4 text-muted font-weight-light"> -->
                      <!-- <i class="mdi mdi-account-outline icon-sm mr-2"></i> -->
                      <!-- <span>jack Menqu</span> -->
                    <!-- </div> -->
                    <!-- <div class="d-flex align-items-center text-muted font-weight-light"> -->
                      <!-- <i class="mdi mdi-clock icon-sm mr-2"></i> -->
                      <!-- <span>October 3rd, 2018</span> -->
                    <!-- </div> -->
                  <!-- </div> -->
                  <!-- <div class="row mt-3"> -->
                    <!-- <div class="col-6 pr-1"> -->
                      <!-- <img src="images/dashboard/img_1.jpg" class="mb-2 mw-100 w-100 rounded" alt="image"> -->
                      <!-- <img src="images/dashboard/img_4.jpg" class="mw-100 w-100 rounded" alt="image"> -->
                    <!-- </div> -->
                    <!-- <div class="col-6 pl-1"> -->
                      <!-- <img src="images/dashboard/img_2.jpg" class="mb-2 mw-100 w-100 rounded" alt="image"> -->
                      <!-- <img src="images/dashboard/img_3.jpg" class="mw-100 w-100 rounded" alt="image"> -->
                    <!-- </div> -->
                  <!-- </div> -->
                  <!-- <div class="d-flex mt-5 align-items-top"> -->
                    <!-- <img src="images/faces/face3.jpg" class="img-sm rounded-circle mr-3" alt="image"> -->
                    <!-- <div class="mb-0 flex-grow"> -->
                      <!-- <h5 class="mr-2 mb-2">School Website - Authentication Module.</h5> -->
                      <!-- <p class="mb-0 font-weight-light">It is a long established fact that a reader will be distracted by the readable -->
                        <!-- content of a page.</p> -->
                    <!-- </div> -->
                    <!-- <div class="ml-auto"> -->
                      <!-- <i class="mdi mdi-heart-outline text-muted"></i> -->
                    <!-- </div> -->
                  <!-- </div> -->
                <!-- </div> -->
              <!-- </div> -->
            <!-- </div> -->
          <!-- </div> -->
          <!-- <div class="row"> -->
            <!-- <div class="col-md-12 grid-margin stretch-card"> -->
              <!-- <div class="card"> -->
                <!-- <div class="card-body"> -->
                  <!-- <h4 class="card-title">Project Status</h4> -->
                  <!-- <div class="table-responsive"> -->
                    <!-- <table class="table"> -->
                      <!-- <thead> -->
                        <!-- <tr> -->
                          <!-- <th> -->
                            <!-- # -->
                          <!-- </th> -->
                          <!-- <th> -->
                            <!-- Name -->
                          <!-- </th> -->
                          <!-- <th> -->
                            <!-- Due Date -->
                          <!-- </th> -->
                          <!-- <th> -->
                            <!-- Progress -->
                          <!-- </th> -->
                        <!-- </tr> -->
                      <!-- </thead> -->
                      <!-- <tbody> -->
                        <!-- <tr> -->
                          <!-- <td> -->
                            <!-- 1 -->
                          <!-- </td> -->
                          <!-- <td> -->
                            <!-- Herman Beck -->
                          <!-- </td> -->
                          <!-- <td> -->
                            <!-- May 15, 2015 -->
                          <!-- </td> -->
                          <!-- <td> -->
                            <!-- <div class="progress"> -->
                              <!-- <div class="progress-bar bg-gradient-success" role="progressbar" style="width: 25%" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div> -->
                            <!-- </div> -->
                          <!-- </td> -->
                        <!-- </tr> -->
                        <!-- <tr> -->
                          <!-- <td> -->
                            <!-- 2 -->
                          <!-- </td> -->
                          <!-- <td> -->
                            <!-- Messsy Adam -->
                          <!-- </td> -->
                          <!-- <td> -->
                            <!-- Jul 01, 2015 -->
                          <!-- </td> -->
                          <!-- <td> -->
                            <!-- <div class="progress"> -->
                              <!-- <div class="progress-bar bg-gradient-danger" role="progressbar" style="width: 75%" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100"></div> -->
                            <!-- </div> -->
                          <!-- </td> -->
                        <!-- </tr> -->
                        <!-- <tr> -->
                          <!-- <td> -->
                            <!-- 3 -->
                          <!-- </td> -->
                          <!-- <td> -->
                            <!-- John Richards -->
                          <!-- </td> -->
                          <!-- <td> -->
                            <!-- Apr 12, 2015 -->
                          <!-- </td> -->
                          <!-- <td> -->
                            <!-- <div class="progress"> -->
                              <!-- <div class="progress-bar bg-gradient-warning" role="progressbar" style="width: 90%" aria-valuenow="90" aria-valuemin="0" aria-valuemax="100"></div> -->
                            <!-- </div> -->
                          <!-- </td> -->
                        <!-- </tr> -->
                        <!-- <tr> -->
                          <!-- <td> -->
                            <!-- 4 -->
                          <!-- </td> -->
                          <!-- <td> -->
                            <!-- Peter Meggik -->
                          <!-- </td> -->
                          <!-- <td> -->
                            <!-- May 15, 2015 -->
                          <!-- </td> -->
                          <!-- <td> -->
                            <!-- <div class="progress"> -->
                              <!-- <div class="progress-bar bg-gradient-primary" role="progressbar" style="width: 50%" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100"></div> -->
                            <!-- </div> -->
                          <!-- </td> -->
                        <!-- </tr> -->
                        <!-- <tr> -->
                          <!-- <td> -->
                            <!-- 5 -->
                          <!-- </td> -->
                          <!-- <td> -->
                            <!-- Edward -->
                          <!-- </td> -->
                          <!-- <td> -->
                            <!-- May 03, 2015 -->
                          <!-- </td> -->
                          <!-- <td> -->
                            <!-- <div class="progress"> -->
                              <!-- <div class="progress-bar bg-gradient-danger" role="progressbar" style="width: 35%" aria-valuenow="35" aria-valuemin="0" aria-valuemax="100"></div> -->
                            <!-- </div> -->
                          <!-- </td> -->
                        <!-- </tr> -->
                        <!-- <tr> -->
                          <!-- <td> -->
                            <!-- 5 -->
                          <!-- </td> -->
                          <!-- <td> -->
                            <!-- Ronald -->
                          <!-- </td> -->
                          <!-- <td> -->
                            <!-- Jun 05, 2015 -->
                          <!-- </td> -->
                          <!-- <td> -->
                            <!-- <div class="progress"> -->
                              <!-- <div class="progress-bar bg-gradient-info" role="progressbar" style="width: 65%" aria-valuenow="65" aria-valuemin="0" aria-valuemax="100"></div> -->
                            <!-- </div> -->
                          <!-- </td> -->
                        <!-- </tr> -->
                      <!-- </tbody> -->
                    <!-- </table> -->
                  <!-- </div> -->
                <!-- </div> -->
              <!-- </div> -->
            <!-- </div> -->
          <!-- </div> -->
        </div>
        <!-- content-wrapper ends -->
        <!-- partial:partials/_footer.html -->
        
        <!-- partial -->
      </div>
      <!-- main-panel ends -->
       <footer class="footer">
        <span class="container-fluid" style="padding: 10px;">
           <nav class="pull-left">
                    <ul style="list-style: none;">
                        <li>
                            <a href="#">
                                About us
                            </a>
                        </li>
                    </ul>
                </nav>
                <p class="copyright pull-right">
                    &copy; <script>document.write(new Date().getFullYear())</script> Powered by CITI, All rights reserved
                </p>
            </div>
    </footer>
    </div>
    
    <!-- page-body-wrapper ends -->
  </div>
  <!-- container-scroller -->

  <!-- plugins:js -->
  <script src="vendors/js/vendor.bundle.base.js"></script>
  <script src="vendors/js/vendor.bundle.addons.js"></script>
  <!-- endinject -->
  <!-- Plugin js for this page-->
  <!-- End plugin js for this page-->
  <!-- inject:js -->
  <script src="js/off-canvas.js"></script>
  <script src="js/misc.js"></script>
  <!-- endinject -->
  <!-- Custom js for this page-->
  <script src="js/dashboard.js"></script>
  <!-- End custom js for this page-->
</body>

</html>