/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package bns.Controller;
import bns.Service.MainService;
import bns.Model.MainModel;
import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/mainPage")
public class MainServlet extends HttpServlet {
    private MainService mainService = new MainService();

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<MainModel> contentList = mainService.getContentList();

        if (contentList == null || contentList.isEmpty()) {
            System.out.println("❌ No data received in MainServlet!");
        } else {
            System.out.println("✅ Servlet received " + contentList.size() + " records.");
        }

        request.setAttribute("contentList", contentList);
        System.out.println("📌 Forwarding data to main.jsp");

        request.getRequestDispatcher("main.jsp").forward(request, response);
    }
}