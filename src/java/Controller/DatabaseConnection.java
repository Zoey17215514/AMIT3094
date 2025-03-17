     package Controller;

    import java.sql.*;

    public class DatabaseConnection {
        private Connection conn = null;
        private static final String URL = "jdbc:mysql://localhost:3306/security";
        private static final String USERNAME = "root";
        private static final String PASSWORD = "";

        public Connection getConnection() {
            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
                
                conn = DriverManager.getConnection(URL, USERNAME, PASSWORD);
                System.out.println("Database connection established successfully.");
            } catch (ClassNotFoundException | SQLException e) {
                e.printStackTrace();
            }
            return conn;
        }
    }
