package bns.Model;

public class MainModel {
    private int id;
    private String bestSales;
    private String bestSalesDescription;
    private String sessionTitle1;
    private String sessionTitle2;
    private String title1Desc;
    private String title2Desc;

    // Constructor
    public MainModel(int id, String bestSales, String bestSalesDescription, String sessionTitle1, String sessionTitle2, String title1Desc, String title2Desc) {
        this.id = id;
        this.bestSales = bestSales;
        this.bestSalesDescription = bestSalesDescription;
        this.sessionTitle1 = sessionTitle1;
        this.sessionTitle2 = sessionTitle2;
        this.title1Desc = title1Desc;
        this.title2Desc = title2Desc;
    }

    // Getters
    public int getId() { return id; }
    public String getBestSales() { return bestSales; }
    public String getBestSalesDescription() { return bestSalesDescription; }
    public String getSessionTitle1() { return sessionTitle1; }
    public String getSessionTitle2() { return sessionTitle2; }
    public String getTitle1Desc() { return title1Desc; }
    public String getTitle2Desc() { return title2Desc; }
    
}