<%@page import="Java.*"%>
<%@page import="java.sql.*"%>
<%@page import="javax.crypto.Cipher"%>
<%@page import="javax.crypto.spec.SecretKeySpec"%>
<%@page import="java.util.Base64"%>
<%@page import="java.net.*"%>

<html>
<body>
     <form method="post">
       <label>Name:</label>
       <input type="name" id="name" name="name" required/>
       <label>Emailhfyyfhyf:</label>
       <input type="email" id="email" name="email" required/>
       <input type="submit"name="action" value="Register"/>
    </form>

    <form method="post">
        <input type="name" id="decryptname" name="decryptname" required/>
        <input type="submit" name="action" value="Login"/>
    </form>
    
    <%
      DatabaseConnection conn = new DatabaseConnection();
      Connection connection = conn.getConnection();
      PreparedStatement pstmt = null;
      PSW password = new PSW();
      
      String name=request.getParameter("name");
      String decryptname=request.getParameter("decryptname");
      String email=request.getParameter("email");
      String action=request.getParameter("action");
      
     
      ResultSet rs = null;

      if("Register".equals(action)&&name!=null&&email!=null){ 
        try{
            String encryptedName = password.encrypt(name);
            String encryptedEmail = password.encrypt(email);
            String SQL="INSERT INTO cookies (name,email) VALUES (?,?)";
            pstmt = connection.prepareStatement(SQL);
            pstmt.setString(1,encryptedName);
            pstmt.setString(2,encryptedEmail);
            pstmt.executeUpdate();
            
            String encodedName = URLEncoder.encode(name, "UTF-8");
            String encodedEmail = URLEncoder.encode(email, "UTF-8");

            Cookie namecookie = new Cookie("username",encodedName);
            Cookie emailcookie = new Cookie("useremail",encodedEmail);
            
            namecookie.setPath("/");
            emailcookie.setPath("/");

            namecookie.setHttpOnly(true);
            namecookie.setSecure(true);
            namecookie.setMaxAge(3600);
             
            emailcookie.setHttpOnly(true);
            emailcookie.setSecure(true);
            emailcookie.setMaxAge(3600);
             
            response.addCookie(namecookie);
            response.addCookie(emailcookie);

     
            
        }catch(SQLException e){
            out.println(e.getMessage());
        }
      }

      if("Login".equals(action)&&decryptname!=null){
        try{
            
            String encryptedname = password.encrypt(decryptname);  
            String SQLValue="SELECT name,email FROM cookies WHERE name =?";
            pstmt=connection.prepareStatement(SQLValue);
            pstmt.setString(1, encryptedname);
            rs=pstmt.executeQuery();

            if(rs.next()){
                String decryptedName = password.decrypt(rs.getString("name"));
                String decryptedEmail = password.decrypt(rs.getString("email"));
                out.println("Decrypted Name : "+decryptedName);
                out.println("Decrypted Email : "+decryptedEmail);
            }else{
                out.println("Not Data Found!");
            }
        }catch(SQLException e){
            out.println(e.getMessage());
        }

        pstmt.close();
        rs.close();
      }
        
      
    %>

    
</body>
</html>



