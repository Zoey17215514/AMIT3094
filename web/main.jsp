<%-- 
    Document   : main
    Created on : Mar 16, 2025, 5:10:58 PM
    Author     : Chong Sze Ling
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.List" %>
<%@ page import="bns.Model.MainModel" %>

 
    
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

    
   <%
        List<MainModel> contentList = (List<MainModel>) request.getAttribute("contentList");

        // Debugging inside JSP
        System.out.println("🔎 JSP Debug: contentList = " + contentList);

        if (contentList == null || contentList.isEmpty()) {
    %>
        <p>❌ contentList is NULL or EMPTY!</p>
    <%
        } else {
    %>
        <p>✅ contentList has <%= contentList.size() %> records.</p>
        <ul>
            <%
                for (MainModel item : contentList) {
            %>
                <li>📌 <%= item.getSessionTitle1() %></li>
            <%
                }
            %>
        </ul>
    <%
        }
    %>
    
    	<div class="container">
            <div class="row">
                    <div class="col-md-8 d-flex align-items-stretch">
                            <div class="img" style="background-image: url(images/about-1.jpg);"></div>
                    </div>
                    <div class="col-md-4 py-md-5 ftco-animate">
                            <div class="text py-3 py-md-5">
                <h2 class="mb-4">New Women's Clothing Summer Collection 2019</h2>
                <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean.</p>
                <p><a href="#" class="btn btn-white px-4 py-3">Shop now</a></p>
                            </div>
                    </div>
            </div>

            <div class="row">
                    <div class="col-md-5 order-md-last d-flex align-items-stretch">
                            <div class="img img-2" style="background-image: url(images/book-main.jpg);"></div>
                    </div>
                    <div class="col-md-7 py-3 py-md-5 ftco-animate">
                            <div class="text text-2 py-md-5">
                <h2 class="mb-4">New Men's Clothing Summer Collection 2019</h2>
                <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean.</p>
                <p><a href="#" class="btn btn-white px-4 py-3">Shop now</a></p>
                            </div>
                    </div>
            </div>
    	</div>
    </section>


    <section class="container py-5">
        <div class="text-center mb-4">
            <h2 class="mb-3">Recommend Books</h2>
            <p>Wisdom and wealth lie within books, where knowledge shines brighter than gold.</p>
        </div>
        <div class="row g-4">
            <div class="col-sm-12 col-md-6 col-lg-4">
                <div class="card border-0 shadow-sm">
                    <div class="position-relative">
                        <img src="images/product-5.jpg" class="card-img-top" alt="Top 1">
                    </div>
                </div>
            </div>
            <div class="col-sm-12 col-md-6 col-lg-4">
                <div class="card border-0 shadow-sm">
                    <div class="position-relative">
                        <img src="images/product-5.jpg" class="card-img-top" alt="Top 2">
                    </div>
                </div>
            </div>
            <div class="col-sm-12 col-md-6 col-lg-4">
                <div class="card border-0 shadow-sm">
                    <div class="position-relative">
                        <img src="images/product-5.jpg" class="card-img-top" alt="Top 3">
                    </div>
                </div>
            </div>
        </div>
        <div class="row g-4">
            <div class="col-sm-12 col-md-6 col-lg-4">
                <div class="card border-0 shadow-sm">
                    <div class="position-relative">
                        <img src="images/product-5.jpg" class="card-img-top" alt="Floral Jackquard Pullover">
                        <span class="position-absolute top-0 start-0 bg-danger text-white px-2 py-1">30%</span>
                    </div>
                    <div class="card-body text-center">
                        <h5 class="card-title"><a href="#" class="text-decoration-none">Floral Jackquard Pullover</a></h5>
                        <p class="mb-2">
                            <span class="text-muted text-decoration-line-through me-2">$120.00</span>
                            <span class="fw-bold text-success">$80.00</span>
                        </p>
                        <div class="mb-3">
                            <i class="bi bi-star"></i>
                            <i class="bi bi-star"></i>
                            <i class="bi bi-star"></i>
                            <i class="bi bi-star"></i>
                            <i class="bi bi-star"></i>
                        </div>
                        <div class="d-flex justify-content-center gap-2">
                            <a href="#" class="btn btn-outline-primary">Add to cart</a>
                        </div>
                    </div>
                </div>
            </div>
            
            <div class="col-sm-12 col-md-6 col-lg-4">
                <div class="card border-0 shadow-sm">
                    <div class="position-relative">
                        <img src="images/product-5.jpg" class="card-img-top" alt="Floral Jackquard Pullover">
                        <span class="position-absolute top-0 start-0 bg-danger text-white px-2 py-1">30%</span>
                    </div>
                    <div class="card-body text-center">
                        <h5 class="card-title"><a href="#" class="text-decoration-none">Floral Jackquard Pullover</a></h5>
                        <p class="mb-2">
                            <span class="text-muted text-decoration-line-through me-2">$120.00</span>
                            <span class="fw-bold text-success">$80.00</span>
                        </p>
                        <div class="mb-3">
                            <i class="bi bi-star"></i>
                            <i class="bi bi-star"></i>
                            <i class="bi bi-star"></i>
                            <i class="bi bi-star"></i>
                            <i class="bi bi-star"></i>
                        </div>
                        <div class="d-flex justify-content-center gap-2">
                            <a href="#" class="btn btn-outline-primary">Add to cart</a>
                        </div>
                    </div>
                </div>
            </div>
            
            <div class="col-sm-12 col-md-6 col-lg-4">
                <div class="card border-0 shadow-sm">
                    <div class="position-relative">
                        <img src="images/product-5.jpg" class="card-img-top" alt="Floral Jackquard Pullover">
                        <span class="position-absolute top-0 start-0 bg-danger text-white px-2 py-1">30%</span>
                    </div>
                    <div class="card-body text-center">
                        <h5 class="card-title"><a href="#" class="text-decoration-none">Floral Jackquard Pullover</a></h5>
                        <p class="mb-2">
                            <span class="text-muted text-decoration-line-through me-2">$120.00</span>
                            <span class="fw-bold text-success">$80.00</span>
                        </p>
                        <div class="mb-3">
                            <i class="bi bi-star"></i>
                            <i class="bi bi-star"></i>
                            <i class="bi bi-star"></i>
                            <i class="bi bi-star"></i>
                            <i class="bi bi-star"></i>
                        </div>
                        <div class="d-flex justify-content-center gap-2">
                            <a href="#" class="btn btn-outline-primary">Add to cart</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="container py-5">
        <div class="text-center mb-4">
            <h2 class="mb-3">Best Sales</h2>
            <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia</p>
        </div>
        <div class="row g-4">
            <div class="col-sm-12 col-md-6 col-lg-4">
                <div class="card border-0 shadow-sm">
                    <div class="position-relative">
                        <img src="images/product-5.jpg" class="card-img-top" alt="Top 1">
                    </div>
                </div>
            </div>
            <div class="col-sm-12 col-md-6 col-lg-4">
                <div class="card border-0 shadow-sm">
                    <div class="position-relative">
                        <img src="images/product-5.jpg" class="card-img-top" alt="Top 2">
                    </div>
                </div>
            </div>
            <div class="col-sm-12 col-md-6 col-lg-4">
                <div class="card border-0 shadow-sm">
                    <div class="position-relative">
                        <img src="images/product-5.jpg" class="card-img-top" alt="Top 3">
                    </div>
                </div>
            </div>
        </div>
        <div class="row g-4">
            <div class="col-sm-12 col-md-6 col-lg-4">
                <div class="card border-0 shadow-sm">
                    <div class="position-relative">
                        <img src="images/product-5.jpg" class="card-img-top" alt="Floral Jackquard Pullover">
                    </div>
                    <div class="card-body text-center">
                        <h5 class="card-title"><a href="#" class="text-decoration-none">Floral Jackquard Pullover</a></h5>
                        <p class="mb-2">
                            <span class="text-muted text-decoration-line-through me-2">$120.00</span>
                            <span class="fw-bold text-success">$80.00</span>
                        </p>
                        <div class="mb-3">
                            <i class="bi bi-star"></i>
                            <i class="bi bi-star"></i>
                            <i class="bi bi-star"></i>
                            <i class="bi bi-star"></i>
                            <i class="bi bi-star"></i>
                        </div>
                        <div class="d-flex justify-content-center gap-2">
                            <a href="#" class="btn btn-outline-primary">Add to cart</a>
                        </div>
                    </div>
                </div>
            </div>
            
            <div class="col-sm-12 col-md-6 col-lg-4">
                <div class="card border-0 shadow-sm">
                    <div class="position-relative">
                        <img src="images/product-5.jpg" class="card-img-top" alt="Floral Jackquard Pullover">
                        <span class="position-absolute top-0 start-0 bg-danger text-white px-2 py-1">30%</span>
                    </div>
                    <div class="card-body text-center">
                        <h5 class="card-title"><a href="#" class="text-decoration-none">Floral Jackquard Pullover</a></h5>
                        <p class="mb-2">
                            <span class="text-muted text-decoration-line-through me-2">$120.00</span>
                            <span class="fw-bold text-success">$80.00</span>
                        </p>
                        <div class="mb-3">
                            <i class="bi bi-star"></i>
                            <i class="bi bi-star"></i>
                            <i class="bi bi-star"></i>
                            <i class="bi bi-star"></i>
                            <i class="bi bi-star"></i>
                        </div>
                        <div class="d-flex justify-content-center gap-2">
                            <a href="#" class="btn btn-outline-primary">Add to cart</a>
                        </div>
                    </div>
                </div>
            </div>
            
            <div class="col-sm-12 col-md-6 col-lg-4">
                <div class="card border-0 shadow-sm">
                    <div class="position-relative">
                        <img src="images/product-5.jpg" class="card-img-top" alt="Floral Jackquard Pullover">
                        <span class="position-absolute top-0 start-0 bg-danger text-white px-2 py-1">30%</span>
                    </div>
                    <div class="card-body text-center">
                        <h5 class="card-title"><a href="#" class="text-decoration-none">Floral Jackquard Pullover</a></h5>
                        <p class="mb-2">
                            <span class="text-muted text-decoration-line-through me-2">$120.00</span>
                            <span class="fw-bold text-success">$80.00</span>
                        </p>
                        <div class="mb-3">
                            <i class="bi bi-star"></i>
                            <i class="bi bi-star"></i>
                            <i class="bi bi-star"></i>
                            <i class="bi bi-star"></i>
                            <i class="bi bi-star"></i>
                        </div>
                        <div class="d-flex justify-content-center gap-2">
                            <a href="#" class="btn btn-outline-primary">Add to cart</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    
    <jsp:include page="includes/footer.jsp" />
    
</body>

    
</html>
