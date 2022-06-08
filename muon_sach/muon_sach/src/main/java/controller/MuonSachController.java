package controller;

import models.HocSinh;
import models.TheMuonSach;
import service.HocSinhService;
import service.SachService;
import service.TheMuonSachService;
import util.RegexData;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "MuonSachController", urlPatterns = "/muonSach")
public class MuonSachController extends HttpServlet {
    private final String REGEX_IDMUONSACH = "^(MS-)[\\d]{4}$";

    TheMuonSachService theMuonSachService = new TheMuonSachService();
    SachService sachService = new SachService();
    HocSinhService hocSinhService = new HocSinhService();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if(action == null) {
            action = "";
        }
        switch (action) {
            case "create":
                create(request,response);
                break;
            case "traSach":
                traSach(request,response);
                break;
            default:
                listMuonSach(request,response);
                break;
        }
    }

    private void traSach(HttpServletRequest request, HttpServletResponse response) {
        String maMuonSach = request.getParameter("maMuonSach");
        int maSach = Integer.parseInt(request.getParameter("maSach"));
        sachService.updateUp(maSach);
        theMuonSachService.update(maMuonSach);
        try {
            response.sendRedirect("/muonSach");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void create(HttpServletRequest request, HttpServletResponse response) {
        int maSach = Integer.parseInt(request.getParameter("maSach"));
        List<HocSinh> hocSinhList = new ArrayList<>();
        hocSinhList = hocSinhService.selectAll();
        request.setAttribute("maSach",maSach);
        request.setAttribute("hocSinhList",hocSinhList);

        try {
            request.getRequestDispatcher("view/formMuonSach.jsp").forward(request,response);
        } catch (ServletException | IOException e) {
            e.printStackTrace();
        }
    }

    private void listMuonSach(HttpServletRequest request, HttpServletResponse response) {
        List<TheMuonSach> theMuonSachList = new ArrayList<>();
        theMuonSachList = theMuonSachService.selectAll();
        request.setAttribute("theMuonSachList",theMuonSachList);
        try {
            request.getRequestDispatcher("view/listTheMuonSach.jsp").forward(request,response);
        } catch (ServletException | IOException e) {
            e.printStackTrace();
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if(action == null) {
            action = "";
        }
        switch (action) {
            case "create":
                goCreate(request,response);
                break;
        }
    }

    private void goCreate(HttpServletRequest request, HttpServletResponse response) {
        String maMuonSach = request.getParameter("maMuonSach");
        if (!maMuonSach.matches(REGEX_IDMUONSACH)) {
            String error = "regex đúng là MS-xxxx";
            request.setAttribute("error",error);
            create(request,response);
        }
        int maSach = Integer.parseInt(request.getParameter("maSach"));
        int maHocSinh = Integer.parseInt(request.getParameter("maHocSinh"));
        boolean trangThai = true;
        String ngayMuon = request.getParameter("ngayMuon");
        String ngayTra = request.getParameter("ngayTra");
        TheMuonSach theMuonSach = new TheMuonSach(maMuonSach,maSach,maHocSinh,trangThai,ngayMuon,ngayTra);
        sachService.updateDown(maSach);
        theMuonSachService.create(theMuonSach);
        try {
            response.sendRedirect("/muonSach");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
