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


@WebServlet("/Web Pages")
public class MainServlet extends HttpServlet {
    private MainService mainService = new MainService();

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<MainModel> contentList = mainService.getContentList();

        // ✅ Debugging: Print fetched data
        System.out.println("📌 Retrieved Data Count: " + contentList.size());
        for (MainModel item : contentList) {
            System.out.println("📌 Sending to JSP -> ID: " + item.getId() + ", Title1: " + item.getSessionTitle1());
        }

        // Send data to JSP
        request.setAttribute("contentList", contentList);
        request.getRequestDispatcher("main.jsp").forward(request, response);
    }
}
