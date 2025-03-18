/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

package bns.Controller;

import java.io.IOException;
import java.util.List;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import bns.Service.MainService;
import bns.Model.MainModel;

public class MainServlet extends HttpServlet {
    private MainService mainService = new MainService();

    protected void doGet(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        List<MainModel> contentList = mainService.getContentList();

        request.setAttribute("contentList", contentList);
        
        

        System.out.println("🔎 Forwarding to JSP...");
        System.out.println("🔎 contentList size: " + (contentList == null ? "NULL" : contentList.size()));
        request.setAttribute("contentList", contentList);
        request.getRequestDispatcher("main.jsp").forward(request, response);
    }
}