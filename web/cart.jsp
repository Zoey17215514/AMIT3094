<%-- 
    Document   : cart
    Created on : Mar 16, 2025, 5:09:59 PM
    Author     : Chong Sze Ling
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.*, jakarta.servlet.http.*, jakarta.servlet.*" %>

<%
    HttpSession sessionCart = request.getSession();
    List<String> cart = (List<String>) sessionCart.getAttribute("cart");

    if (cart == null) {
        cart = new ArrayList<>();
        sessionCart.setAttribute("cart", cart);
    }

    String productId = request.getParameter("id");
    if (productId != null) {
        cart.add("Product " + productId);
    }
%>

    <jsp:include page="includes/header.jsp" />

    <h1>Shopping Cart</h1>
    <ul>
        <% for (String item : cart) { %>
            <li><%= item %> - <a href="remove.jsp?id=<%= item %>">Remove</a></li>
        <% } %>
    </ul>

    <a href="checkout.jsp">Proceed to Checkout</a>
    
    <jsp:include page="includes/footer.jsp" />
</body>
</html>
