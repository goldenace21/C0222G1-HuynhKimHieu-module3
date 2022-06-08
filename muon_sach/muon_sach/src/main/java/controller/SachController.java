package controller;

import models.Sach;
import service.SachService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "SachController", urlPatterns = "/sach")
public class SachController extends HttpServlet {

    SachService sachService = new SachService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        listSach(request,response);
    }

    private void listSach(HttpServletRequest request, HttpServletResponse response) {
        List<Sach> sachList = new ArrayList<>();
        sachList = sachService.selectAll();
        request.setAttribute("sachList",sachList);

        try {
            request.getRequestDispatcher("view/listSach.jsp").forward(request,response);
        } catch (ServletException | IOException e) {
            e.printStackTrace();
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
