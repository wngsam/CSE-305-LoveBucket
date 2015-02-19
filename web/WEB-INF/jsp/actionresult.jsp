<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>LoveBocket Login</title>

        <!-- Bootstrap Core CSS - Uses Bootswatch Flatly Theme: http://bootswatch.com/flatly/ -->
        <link href="assets/css/bootstrap.min.css" rel="stylesheet">

        <!-- Custom CSS -->
        <link href="assets/css/freelancer.css" rel="stylesheet">

        <!-- Custom Fonts -->
        <link href="assets/font-awesome-4.1.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
        <link href="http://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
        <link href="http://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic" rel="stylesheet" type="text/css">

        <style>
            header{
                background-color: white;
                color: navy; 
            }
        </style>
        `
        <script src="assets/LoveBucketJS/LovelyBucketCommon.js"></script>
    </head>

    <body id="page-top" class="index">

        <!-- Navigation -->
        <nav class="navbar navbar-default navbar-fixed-top">
            <div class="container">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header page-scroll">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="mainPage.html">LoveBucket</a>
                </div>

                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav navbar-right">
                        <li class="hidden">
                            <a href="#page-top"></a>
                        </li> 
                        <c:if test="${ not empty currentPerson}">
                            <li class="page-scroll">
                                <a href="viewperson=${currentPerson.email}">${currentPerson.firstName}'s Account</a>
                            </li>
                        </c:if>

                        <li class="page-scroll">
                            <a href="search.html">Search</a>
                        </li>
                        <c:if test="${ empty currentPerson}">
                            <li class="page-scroll">
                                <a href="login">Login</a>
                            </li>
                        </c:if>
                        <c:if test="${not empty currentPerson}">
                            <li class="page-scroll">
                                <a href="login/logout">logout</a>
                            </li>
                        </c:if>                        
                        <li class="page-scroll">
                            <a href="about.html">About</a>
                        </li>
                        <li class="page-scroll">
                            <a href="contact.html">Contact</a>
                        </li>
                    </ul>
                </div>
                <!-- /.navbar-collapse -->
            </div>
            <!-- /.container-fluid -->
        </nav>

        <!-- Contact Section -->
        <header>
            <div class="container " >
                <div class="row">
                    <div class="col-lg-12 text-center">
                        <h2>${result}</h2>
                        <hr class="star-primary">
                    </div>
                </div>
                <div class="row" >

                </div>
            </div>
        </header>
        <!-- Footer -->



        <!-- Bootstrap Core JavaScript -->
        <script src="assets/js/bootstrap.min.js"></script>

        <!-- Plugin JavaScript -->
        <script src="http://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>
        <script src="assets/js/classie.js"></script>
        <script src="assets/js/cbpAnimatedHeader.js"></script>

        <!-- Contact Form JavaScript -->
        <script src="assets/js/jqBootstrapValidation.js"></script>
        <script src="assets/js/contact_me.js"></script>

        <!-- Custom Theme JavaScript -->
        <script src="assets/js/freelancer.js"></script>

    </body>

</html>