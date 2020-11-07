<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en" xmlns="http://www.w3.org/1999/xhtml" xmlns:th="http://www.thymeleaf.org">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Responsive and adaptive site</title>
    <link href="https://fonts.googleapis.com/css?family=Poppins:400,600,700,900&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    <script src="/static/scripts/adaptive.js"></script>
    <link rel="stylesheet" href="/static/styles/adaptive.css">
</head>
<body>

<header class="header" id="header">

    <a class="logo" href="#">LOGO test</a>

    <ul class="menu">
        <li class="menu__item">
            <a href="#home" class="menu__link menu__link--active">Home</a>
        </li>
        <li class="menu__item">
            <a href="#about" class="menu__link">About</a>
        </li>
        <li class="menu__item">
            <a href="#services" class="menu__link">Service</a>
        </li>
        <li class="menu__item">
            <a href="#portfolio" class="menu__link">Portfolio</a>
        </li>
        <li class="menu__item">
            <a href="#team" class="menu__link">Team</a>
        </li>
        <li class="menu__item">
            <a href="#contact" class="menu__link">Contact</a>
        </li>
    </ul>

    <div class="toggle" id="toggle"></div>

</header>

<section id="home">

    <div>
        <h2 class="title">Responsive and adaptive site</h2>
        <p class="text">Lorem ipsum dolor sit amet consectetur adipisicing elit. Itaque maxime aliquid laudantium labore quam modi cumque delectus ipsa iste natus ab, omnis vitae quod, vel maiores earum asperiores commodi odit.</p>
        <a class="link" href="#">Read more</a>
    </div>


</section>

<section id="about">

    <div>
        <h2 class="title">About US</h2>
        <p class="text">Lorem ipsum dolor sit amet consectetur adipisicing elit. Itaque maxime aliquid laudantium labore quam modi cumque delectus ipsa iste natus ab, omnis vitae quod, vel maiores earum asperiores commodi odit.</p>
    </div>

</section>

<section id="services">

    <div>
        <h2 class="title">Our services</h2>
        <p class="text">Lorem ipsum dolor sit amet consectetur adipisicing elit. Itaque maxime aliquid laudantium labore quam modi cumque delectus ipsa iste natus ab, omnis vitae quod, vel maiores earum asperiores commodi odit.</p>
    </div>

</section>

<section id="portfolio">

    <div>
        <h2 class="title">Our Recent Work</h2>
        <p class="text">Lorem ipsum dolor sit amet consectetur adipisicing elit. Itaque maxime aliquid laudantium labore quam modi cumque delectus ipsa iste natus ab, omnis vitae quod, vel maiores earum asperiores commodi odit.</p>
    </div>

</section>

<section id="team">

    <div>
        <h2 class="title">Our Expert</h2>
        <p class="text">Lorem ipsum dolor sit amet consectetur adipisicing elit. Itaque maxime aliquid laudantium labore quam modi cumque delectus ipsa iste natus ab, omnis vitae quod, vel maiores earum asperiores commodi odit.</p>
    </div>

</section>

<section id="contact">

    <div>
        <h2 class="title">Contact Us</h2>
        <p class="text">Lorem ipsum dolor sit amet consectetur adipisicing elit. Itaque maxime aliquid laudantium labore quam modi cumque delectus ipsa iste natus ab, omnis vitae quod, vel maiores earum asperiores commodi odit.</p>
    </div>

</section>

</body>
</html>