/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package bns.DAO;
import bns.Model.MainModel;
import bns.Utils.DBConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import java.sql.*;



public class MainDAO {
    
    public List<MainModel> getContentList() {
        List<MainModel> contentList = new ArrayList<>();
        String query = "SELECT * FROM main_page_content";

        try (Connection conn = DBConnection.getConnection();
             PreparedStatement stmt = conn.prepareStatement(query);
             ResultSet rs = stmt.executeQuery()) {

            System.out.println("✅ Query Executed: " + query); // Check if query runs

            while (rs.next()) {
                MainModel model = new MainModel(
                    rs.getInt("id"),
                    rs.getString("best_sales"),
                    rs.getString("best_sales_description"),
                    rs.getString("session_title1"),
                    rs.getString("session_title2"),
                    rs.getString("title1_desc"),
                    rs.getString("title2_desc")
                );
                contentList.add(model);

                // ✅ Debug each fetched row
                System.out.println("✅ Fetched from DB: " + model.getSessionTitle1());
            }

        } catch (SQLException e) {
            System.out.println("❌ SQL Error: " + e.getMessage());
            e.printStackTrace();
        }

        // ✅ Check if list is empty
        if (contentList.isEmpty()) {
            System.out.println("⚠ No records found in MainDAO!");
        }

        return contentList;
    }
}