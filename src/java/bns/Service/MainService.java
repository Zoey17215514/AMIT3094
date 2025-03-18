/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package bns.Service;
import bns.DAO.MainDAO;
import bns.Model.MainModel;
import java.util.List;

public class MainService {
    private MainDAO mainDAO = new MainDAO();

    public List<MainModel> getContentList() {
        List<MainModel> contentList = mainDAO.getContentList();

        if (contentList == null || contentList.isEmpty()) {
            System.out.println("❌ No data received in MainService!");
        } else {
            System.out.println("✅ Service received " + contentList.size() + " records.");
            for (MainModel model : contentList) {
                System.out.println("🔹 " + model.getSessionTitle1() + " | " + model.getSessionTitle2());
            }
        }

        return contentList;
    }
    
}
