<%-- 
    Document   : main
    Created on : Mar 16, 2025, 5:10:58 PM
    Author     : Chong Sze Ling
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List, bns.Model.MainModel" %>
<%
    List<MainModel> contentList = (List<MainModel>) request.getAttribute("contentList");

    // ✅ Debugging: Print in JSP
    if (contentList == null) {
        out.println("<p>❌ contentList is NULL!</p>");
    } else if (contentList.isEmpty()) {
        out.println("<p>⚠ No records found!</p>");
    } else {
        out.println("<p>✅ Data Received! Total: " + contentList.size() + "</p>");
        for (MainModel item : contentList) {
            out.println("<p>ID: " + item.getId() + ", Title1: " + item.getSessionTitle1() + "</p>");
        }
    }
%>

    <jsp:include page="includes/header.jsp" />

    
            
    <section class="ftco-section ftco-choose ftco-no-pb ftco-no-pt">
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
                            <a href="#" class="btn btn-primary">Buy now</a>
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
                            <a href="#" class="btn btn-primary">Buy now</a>
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
                            <a href="#" class="btn btn-primary">Buy now</a>
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
                            <a href="#" class="btn btn-primary">Buy now</a>
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
                            <a href="#" class="btn btn-primary">Buy now</a>
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
                            <a href="#" class="btn btn-primary">Buy now</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    
    <footer id="footer" class="footer dark-background">
        <jsp:include page="includes/footer.jsp" />
    </footer>
    
</body>

    
</html>
