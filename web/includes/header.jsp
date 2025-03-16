<%-- 
    Document   : header
    Created on : Mar 16, 2025, 5:56:03 PM
    Author     : Chong Sze Ling
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Home - My Store</title>
    
    <!-- Bootstrap 5 CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    
    <!-- Custom CSS -->
    <link href="assets/css/main.css" rel="stylesheet">

</head>
<body>
    
<header id="header" class="header d-flex align-items-center sticky-top bg-light shadow-sm">
    <div class="container d-flex align-items-center justify-content-between">
        <a href="index.html" class="navbar-brand d-flex align-items-center">
            <h1 class="sitename mb-0">Company</h1><span class="text-primary">.</span>
        </a>
        
        <nav class="navbar navbar-expand-lg">
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navmenu" aria-controls="navmenu" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navmenu">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item"><a class="nav-link active" href="#hero">Home</a></li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="about.html" id="aboutDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">About</a>
                        <ul class="dropdown-menu" aria-labelledby="aboutDropdown">
                            <li><a class="dropdown-item" href="team.html">Team</a></li>
                            <li><a class="dropdown-item" href="testimonials.html">Testimonials</a></li>
                            <li class="dropdown-submenu">
                                <a class="dropdown-item dropdown-toggle" href="#">Deep Dropdown</a>
                                <ul class="dropdown-menu">
                                    <li><a class="dropdown-item" href="#">Deep Dropdown 1</a></li>
                                    <li><a class="dropdown-item" href="#">Deep Dropdown 2</a></li>
                                    <li><a class="dropdown-item" href="#">Deep Dropdown 3</a></li>
                                    <li><a class="dropdown-item" href="#">Deep Dropdown 4</a></li>
                                    <li><a class="dropdown-item" href="#">Deep Dropdown 5</a></li>
                                </ul>
                            </li>
                        </ul>
                    </li>
                    <li class="nav-item"><a class="nav-link" href="services.html">Services</a></li>
                    <li class="nav-item"><a class="nav-link" href="portfolio.html">Portfolio</a></li>
                    <li class="nav-item"><a class="nav-link" href="pricing.html">Pricing</a></li>
                    <li class="nav-item"><a class="nav-link" href="blog.html">Blog</a></li>
                    <li class="nav-item"><a class="nav-link" href="contact.html">Contact</a></li>
                </ul>
            </div>
        </nav>

        <div class="header-social-links d-flex">
            <a href="#" class="text-dark me-2"><i class="bi bi-twitter"></i></a>
            <a href="#" class="text-dark me-2"><i class="bi bi-facebook"></i></a>
            <a href="#" class="text-dark me-2"><i class="bi bi-instagram"></i></a>
            <a href="#" class="text-dark"><i class="bi bi-linkedin"></i></a>
        </div>
    </div>
</header>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

