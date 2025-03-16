<%-- 
    Document   : main
    Created on : Mar 16, 2025, 5:10:58 PM
    Author     : Chong Sze Ling
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Home - My Store</title>
     <link href="assets/css/main.css" rel="stylesheet">
</head>
<body>
    
    <header>
        <jsp:include page="templates/header.jsp" />
    </header>

    <section>
        <h2>Featured Products</h2>
        <ul>
            <li>Product 1 - <a href="cart.jsp?id=1">Add to Cart</a></li>
            <li>Product 2 - <a href="cart.jsp?id=2">Add to Cart</a></li>
        </ul>
    </section>
</body>

    <footer>
        <jsp:include page="/templates/footer.jsp" />
    </footer>
</html>
