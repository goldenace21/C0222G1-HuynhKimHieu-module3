package controller;

import model.BenhAn;
import model.BenhNhan;
import repository.BenhNhanRepository;
import service.BenhAnService;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "BenhAnController", urlPatterns = "/benhan")
public class BenhAnController extends HttpServlet {

    BenhAnService benhAnService = new BenhAnService();
    BenhNhanRepository benhNhanRepository = new BenhNhanRepository();
    private static final String REGEX_NAME = "^[a-zA-z\\s]*$";

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if(action == null) {
            action = "";
        }
        switch (action) {
            case "create":
//                formCreate(request,response);
                break;
            case "edit":
                formEdit(request,response);
                break;
            case "delete":
                delete(request,response);
            default:
                goListBenhAn(request,response);
                break;
        }
    }

    private void delete(HttpServletRequest request, HttpServletResponse response) {
        String maBenhAn = request.getParameter("maBenhAn");
        benhAnService.delete(maBenhAn);
        goListBenhAn(request,response);
    }

    private void formEdit(HttpServletRequest request, HttpServletResponse response) {
         String maBenhAn = request.getParameter("maBenhAn");
         String maBenhNhan= request.getParameter("maBenhNhan");
         String tenBenhNhan = request.getParameter("tenBenhNhan");

         String ngayNhapVien = request.getParameter("ngayNhapVien");
         String ngayRaVien = request.getParameter("ngayRaVien");
         String lyDoNhapVien = request.getParameter("benhan");
         request.setAttribute("maBenhAn",maBenhAn);
         request.setAttribute("maBenhNhan",maBenhNhan);
         request.setAttribute("tenBenhNhan",tenBenhNhan);
         request.setAttribute("ngayNhapVien",ngayNhapVien);
         request.setAttribute("ngayRaVien",ngayRaVien);
         request.setAttribute("lyDoNhapVien",lyDoNhapVien);
        try {
            request.getRequestDispatcher("view/benh_an/suaBenhAn.jsp").forward(request,response);
        } catch (ServletException | IOException e) {
            e.printStackTrace();
        }
    }

    private void goListBenhAn(HttpServletRequest request, HttpServletResponse response) {
        List<BenhAn> benhAnList = benhAnService.display();
        request.setAttribute("benhAnList",benhAnList);
        try {
            request.getRequestDispatcher("view/benh_an/danhSachBenhAn.jsp").forward(request,response);
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
            case "edit":
                goEdit(request,response);
                break;
        }
    }

    private void goEdit(HttpServletRequest request, HttpServletResponse response) {
         String maBenhAn = request.getParameter("maBenhAn");
         String maBenhNhan = request.getParameter("maBenhNhan");
         String tenBenhNhan = request.getParameter("tenBenhNhan");
        if (!tenBenhNhan.matches(REGEX_NAME)) {
            String error = "sai regex";
            request.setAttribute("error",error);
            formEdit(request,response);
        }
         String ngayNhapVien = request.getParameter("ngayNhapVien");
         String ngayRaVien = request.getParameter("ngayRaVien");
         String lyDoNhapVien = request.getParameter("lyDoNhapVien");
        benhNhanRepository.edit(new BenhNhan(maBenhNhan,tenBenhNhan));
         benhAnService.edit(new BenhAn(maBenhAn,maBenhNhan,tenBenhNhan,ngayNhapVien,ngayRaVien,lyDoNhapVien));
         try {
            response.sendRedirect("/benhan");
         } catch (IOException e) {
            e.printStackTrace();
         }
    }
}
