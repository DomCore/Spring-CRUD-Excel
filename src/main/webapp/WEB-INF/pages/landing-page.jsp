<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link href="https://fonts.googleapis.com/css?family=Poppins:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i&display=swap" rel="stylesheet">

    <title>Mafia Online</title>

    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/assets/css/bootstrap.min.css">

    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/assets/css/font-awesome.css">

    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/assets/css/templatemo-training-studio.css">

    </head>
    
    <body>
    
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
                        <a href="#top" class="logo"><em>Mafia</em> Online</a>
                        <!-- ***** Logo End ***** -->
                        <!-- ***** Menu Start ***** -->
                        <ul class="nav">
                            <li class="scroll-to-section"><a href="#features">Rules</a></li>
                            <li class="scroll-to-section"><a href="#utility">Utility</a></li>
                            <li class="main-button"><a href="${pageContext.request.contextPath}/index">Play</a></li>
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
                <h6>lead your team to victory</h6>
                <h2><em>become</em> a part of the <em>mafia</em></h2>
                <div class="main-button scroll-to-section">
                    <a href="${pageContext.request.contextPath}/lobby">Become a member</a>
                </div>
            </div>
        </div>
    </div>
    <!-- ***** Main Banner Area End ***** -->

    <!-- ***** Features Item Start ***** -->
    <section class="section" id="features">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 offset-lg-3">
                    <div class="section-heading">
                        <h2><em>Rules</em> in a nutshell</h2>
                        <img src="${pageContext.request.contextPath}/static/assets/images/line-dec.png" alt="waves">
                        <p>The objective of the game is for the mafia to “kill off” civilians until they are the majority or the civilians to kill off the entire mafia</p>
                    </div>
                </div>
                <div class="col-lg-6">
                    <ul class="features-items">
                        <li class="feature-item">
                            <div class="left-icon">
                                <img src="${pageContext.request.contextPath}/static/assets/images/civilian-icon.png">
                            </div>
                            <div class="right-content">
                                <h4>The Civilian</h4>
                                <p>	The Civilians are attempting to figure out who is in the mafia simply by talking it out, accusing, and seeing who is acting suspicious.
                                 	As a civilian, it’s best to use verbal/non-verbal cues and your gut to make alliances.</p>

                            </div>
                        </li>
                        <li class="feature-item">
                            <div class="left-icon">
                                <img src="${pageContext.request.contextPath}/static/assets/images/commissar-icon.png" >
                            </div>
                            <div class="right-content">
                                <h4>The Commissar</h4>
                                <p>	The Commissar is a civilian role that, at each nighttime phase, can point to a player he or she thinks is in the mafia and the narrator will nod their head yes or no.
                                 	Once the detective begins to find out the identities of players, they can begin to make alliances with true civilians and or persuade the group to kill true mafia.</p>
                            </div>
                        </li>
                    </ul>
                </div>
                <div class="col-lg-6">
                    <ul class="features-items">
                        <li class="feature-item">
                            <div class="left-icon">
                                <img src="${pageContext.request.contextPath}/static/assets/images/doctor-icon.png" >
                            </div>
                            <div class="right-content">
                                <h4>The Doctor</h4>
                                <p>	 The Doctor is a civilian role that, at each nighttime phase, can save a player he or she thinks the mafia has killed.
                                	 As mentioned earlier, if the doctor saves the right player, that player is brought back into the game. The doctor cannot save themselves.</p>
                            </div>
                        </li>
                        <li class="feature-item">
                            <div class="left-icon">
                                <img src="${pageContext.request.contextPath}/static/assets/images/mafia-icon.png" >
                            </div>
                            <div class="right-content">
                                <h4>The Mafia</h4>
                                <p>	While the other players are attempting to figure out who they are, the mafia must lie the entire game and act as though they are civilians. 
                                	The mafia must strategize together during the day without giving themselves away. 
                                	At night, when the mafia awaken, they point silently to the player they’d like to kill. If all mafia agree, the player is offed.</p>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </section>
    <!-- ***** Features Item End ***** -->

    <!-- ***** Call to Action Start ***** -->
    <section class="section" id="call-to-action">
        <div class="container">
            <div class="row">
                <div class="col-lg-10 offset-lg-1">
                    <div class="cta-content">
                        <h2>begin </h2>
                        <div class="main-button scroll-to-section">
                            <a href="${pageContext.request.contextPath}/lobby">Become a member</a>
                        </div>
                        <h2>today<em>!</em></h2>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- ***** Call to Action End ***** -->

    <section class="section" id="utility">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 offset-lg-3">
                    <div class="section-heading">
                        <h2>beneficial <em>effect</em></h2>
                        <img src="${pageContext.request.contextPath}/static/assets/images/line-dec.png" alt="">
                        <p>Mafia reveals useful skills in various areas of communication</p>
                    </div>
                </div>
            </div>
            <div class="row" id="tabs">
              <div class="col-lg-4">
                <ul>
                  <li><a href='#tabs-1'><img class="hat" src="${pageContext.request.contextPath}/static/assets/images/hat.png">Effective negoti-ons</a></li>
                  <li><a href='#tabs-2'><img class="hat" src="${pageContext.request.contextPath}/static/assets/images/hat.png">Presentation</a></li>
                  <li><a href='#tabs-3'><img class="hat" src="${pageContext.request.contextPath}/static/assets/images/hat.png">Teamwork</a></li>
                  <li><a href='#tabs-4'><img class="hat" src="${pageContext.request.contextPath}/static/assets/images/hat.png">Individual cha-stics</a></li>
                </ul>
              </div>
              <div class="col-lg-8">
                <section class='tabs-content'>
                  <article id='tabs-1'>
					<img src="${pageContext.request.contextPath}/static/assets/images/man.png" alt="Fourth Training">
                    <h4>&#9824; Effective negotiations</h4>
                    <ul>
                    <li>&#10102; Effective argumentation, work with objections;
					<li>&#10103; Development of flexibility and adaptation to changes in the situation;
					<li>&#10104; The ability to manipulate people and reflect manipulations;
					<li>&#10105; The skill to remember all the “moves” of a difficult negotiating party;
					<li>&#10106; Effective “tough” negotiations.
					</ul>
                  </article>
                  <article id='tabs-2'>
					<img src="${pageContext.request.contextPath}/static/assets/images/shoes.png" alt="Fourth Training">
                    <h4>&#9827; Presentation</h4>
                    <ul>
                    <li>&#10102; Oratory and persuasiveness;
					<li>&#10103; Effective self-presentation;
					<li>&#10104; Creating a successful "image";
					<li>&#10105; Skills of non-verbal influence;
					<li>&#10106; The art of listening and hearing.</ul>

                  </article>
                  <article id='tabs-3'>
					<img src="${pageContext.request.contextPath}/static/assets/images/ammo.png" alt="Fourth Training">
                    <h4>&#9829; Teamwork</h4>
                    <ul>
                    <li>&#10102; Effective teamwork;
					<li>&#10103; Leadership development;
					<li>&#10104; Overcoming inertia of thinking;
					<li>&#10105; Productive resolution of the problem.</ul>

                  </article>
                  <article id='tabs-4'>
                    <img src="${pageContext.request.contextPath}/static/assets/images/pistol.png" alt="Fourth Training">
                    <h4>&#9830; Individual characteristics</h4>
                    <ul>
                    <li>&#10102; Stress resistance;
					<li>&#10103; Creativity;
					<li>&#10104; Intuition;
					<li>&#10105; Cohesion of the team.</ul>

                  </article>
                </section>
              </div>
            </div>
        </div>
    </section>
    <!-- ***** Utility End ***** -->

    <!-- ***** Footer Start ***** -->
    <footer>
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <p></p>
                </div>
            </div>
        </div>
    </footer>

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