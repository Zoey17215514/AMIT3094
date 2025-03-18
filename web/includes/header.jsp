<%-- 
    Document   : header
    Created on : Mar 16, 2025, 5:56:03 PM
    Author     : Chong Sze Ling
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.List, bns.Model.MainModel" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Book And Stationary</title>
    
    <!-- Bootstrap 5 CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.css">
    
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
            
            <div class="container-fluid mt-2">
                <form class="d-flex" role="search">
                  <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                  <button class="btn btn-outline-primary" type="submit">Search</button>
                </form>
            </div>
            
            <div class="collapse navbar-collapse" id="navmenu">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item"><a class="nav-link active" href="main.jsp">Home</a></li>
                    <li class="nav-item"><a class="nav-link" href="about.jsp">About</a></li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                          Products
                        </a>
                        <ul class="dropdown-menu">
                          <li><a class="dropdown-item" href="#">Book</a></li>
                          <li><a class="dropdown-item" href="#">Stationary</a></li>
                          <li><hr class="dropdown-divider"></li>
                          <li><a class="dropdown-item" href="#">Hardware</a></li>
                        </ul>
                    </li>
                    <li class="nav-item"><a class="nav-link" href="contact.jsp">Contact</a></li>
                    <li class="nav-item"><a class="nav-link" href="login.jsp">Profile</a></li>
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

