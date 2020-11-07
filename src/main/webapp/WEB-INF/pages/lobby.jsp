<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link href="https://fonts.googleapis.com/css?family=Poppins:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i&display=swap" rel="stylesheet">

    <title>Lobby</title>

    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/assets/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/assets/css/bootstrap.min.css">

    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/assets/css/font-awesome.css">

    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/assets/css/templatemo-training-studio.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/assets/css/font-awesome.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/assets/css/interface.css">

    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/assets/css/templatemo-training-studio.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/modernizr/2.8.3/modernizr.min.js" type="text/javascript"></script>
</head>

<body style= "overflow:  hidden;">

<!-- ***** Preloader Start ***** -->
<div id="js-preloader" class="js-preloader">
    <div class="preloader-inner">
        <span class="dot"></span>
        <div class="dots">
            <span></span>
            <span></span>
            <span></span>
        </div>
    </div>
</div>
<!-- ***** Preloader End ***** -->


<!-- ***** Header Area Start ***** -->
<header class="header-area header-sticky" id="123">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <nav class="main-nav">
                    <!-- ***** Logo Start ***** -->
                    <a href="#top" class="logo">We are glad to see you, <em>User</em> !</a>
                    <!-- ***** Logo End ***** -->
                    <!-- ***** Menu Start ***** -->
                    <ul class="nav">
                        <li class="main-button"><a href="logout.jsp">Exit</a></li>
                    </ul>
                    <ul class="nav">
                        <li class="main-button"><a href="landing-page.html">Language</a></li>
                    </ul>
                    <ul class="nav">
                        <li class="main-button"><a href="landing-page.html">Menu</a></li>
                    </ul>
                    <ul class="nav">
                        <li class="main-button"><a href="${pageContext.request.contextPath}/chat-messaging">Play</a></li>
                    </ul>

                    <a class='menu-trigger'>
                        <span>Menu</span>
                    </a>
                    <!-- ***** Menu End ***** -->
                </nav>
            </div>
        </div>
    </div>
</header>
<!-- ***** Header Area End ***** -->

<!-- ***** Main Banner Area Start ***** -->
<div class="main-banner" id="top">
    <video  autoplay muted loop id="bg-video">
        <source src="${pageContext.request.contextPath}/static/assets/images/mafia-logo.mp4" type="video/mp4" />
    </video>

    <div class="video-overlay header-text">
        <div class="caption">

        </div>
    </div>
</div>
<!-- ***** Main Banner Area End ***** -->

    <div class="exit exit--back fuselage">

    </div>
</div>
<!-- jQuery -->
<script src="${pageContext.request.contextPath}/static/assets/js/jquery-2.1.0.min.js"></script>

<!-- Bootstrap -->
<script src="${pageContext.request.contextPath}/static/assets/js/popper.js"></script>
<script src="${pageContext.request.contextPath}/static/assets/js/bootstrap.min.js"></script>

<!-- Plugins -->
<script src="${pageContext.request.contextPath}/static/assets/js/scrollreveal.min.js"></script>
<script src="${pageContext.request.contextPath}/static/assets/js/waypoints.min.js"></script>
<script src="${pageContext.request.contextPath}/static/assets/js/jquery.counterup.min.js"></script>
<script src="${pageContext.request.contextPath}/static/assets/js/imgfix.min.js"></script>
<script src="${pageContext.request.contextPath}/static/assets/js/mixitup.js"></script>
<script src="${pageContext.request.contextPath}/static/assets/js/accordions.js"></script>

<!-- Global Init -->
<script src="${pageContext.request.contextPath}/static/assets/js/custom.js"></script>

</body>
</html>