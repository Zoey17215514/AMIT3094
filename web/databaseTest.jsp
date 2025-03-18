<%-- 
    Document   : databaseTest
    Created on : Mar 18, 2025, 3:29:58 PM
    Author     : Chong Sze Ling
--%>

<%@ page import="java.sql.*" %>
<%
    // Database connection details
    String url = "jdbc:mysql://localhost:3306/bookandstationary?zeroDateTimeBehavior=CONVERT_TO_NULL";
    String user = "root"; // Default MySQL username
    String password = ""; // Change if you set a password for root
    
    Connection conn = null;
    Statement stmt = null;
    
    try {
        // Load MySQL JDBC Driver
        Class.forName("com.mysql.cj.jdbc.Driver");
        
        // Establish connection
        conn = DriverManager.getConnection(url, user, password);
        out.println("<p>Database connected successfully!</p>");
        
        // Execute a test query (Optional: Fetch data)
        stmt = conn.createStatement();
        ResultSet rs = stmt.executeQuery("SELECT * FROM main_page_content"); // Change `books` to your actual table name
        
        while (rs.next()) {
            out.println("<p>Book ID: " + rs.getString("session_title1") + ", Title: " + rs.getString("session_title2") + "</p>");
        }
        
    } catch (Exception e) {
        out.println("<p>Error: " + e.getMessage() + "</p>");
    } finally {
        if (stmt != null) stmt.close();
        if (conn != null) conn.close();
    }
%>