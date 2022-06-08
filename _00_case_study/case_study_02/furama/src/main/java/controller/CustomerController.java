package controller;

import model.Customer;
import service.customer.CustomerServiceImpl;
import service.customer.ICustomerService;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "FuramaController", urlPatterns = "/customer")
public class CustomerController extends HttpServlet {

    ICustomerService customerService = new CustomerServiceImpl();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if(action == null) {
            action = "";
        }
        switch (action) {
            case "create":
                formCreate(request,response);
                break;
            case "edit":
                formEdit(request,response);
                break;
            case "search":
                search(request,response);
                break;
            case "orderByName":
                orderByName(request,response);
                break;
            case "delete":
                delete(request,response);
                break;
            default:
                customer(request,response);
                break;
        }
    }

    private void delete(HttpServletRequest request, HttpServletResponse response) {
        String id = request.getParameter("id");
        customerService.delete(id);
        try {
            response.sendRedirect("/customer");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void orderByName(HttpServletRequest request, HttpServletResponse response) {
        List<Customer> customerList = new ArrayList<>();
        customerList = customerService.orderByName();
        request.setAttribute("customerList" ,customerList);
        try {
            request.getRequestDispatcher("view/customer/customer.jsp").forward(request,response);
        } catch (ServletException | IOException e) {
            e.printStackTrace();
        }
    }

    private void search(HttpServletRequest request, HttpServletResponse response) {
        List<Customer> customerList = new ArrayList<>();
        String name = request.getParameter("name");
        String address = request.getParameter("address");
        customerList = customerService.search(name,address);
        request.setAttribute("customerList" ,customerList);
        request.setAttribute("name",name);
        request.setAttribute("address",address);
        try {
            request.getRequestDispatcher("view/customer/customer.jsp").forward(request,response);
        } catch (ServletException | IOException e) {
            e.printStackTrace();
        }

    }

    private void formEdit(HttpServletRequest request, HttpServletResponse response) {
        String id = request.getParameter("id");
        request.setAttribute("id", id);
        try {
            request.getRequestDispatcher("view/customer/editCustomer.jsp").forward(request,response);
        } catch (ServletException | IOException e) {
            e.printStackTrace();
        }
    }

    private void formCreate(HttpServletRequest request, HttpServletResponse response) {
        try {
            request.getRequestDispatcher("view/customer/createCustomer.jsp").forward(request,response);
        } catch (ServletException | IOException e) {
            e.printStackTrace();
        }
    }

    private void customer(HttpServletRequest request, HttpServletResponse response) {
        String name = request.getParameter("name");
        String address = request.getParameter("address");
        List<Customer> customerList = customerService.search(name,address);
        request.setAttribute("customerList",customerList);
        try {
            request.getRequestDispatcher("view/customer/customer.jsp").forward(request,response);
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
                createNew(request,response);
                break;
            case "edit":
                edit(request,response);
                break;
            default:
                customer(request,response);
                break;
        }
    }

    private void edit(HttpServletRequest request, HttpServletResponse response) {
        String id = request.getParameter("id");
        int idType = Integer.parseInt(request.getParameter("idType"));
        String name = request.getParameter("name");
        String birthday = request.getParameter("birthday");
        String gender = request.getParameter("gender");
        String idCard = request.getParameter("idCard");
        String phoneNumber = request.getParameter("phoneNumber");
        String email = request.getParameter("email");
        String address = request.getParameter("address");
        customerService.edit(new Customer( id, idType, name, birthday, gender, idCard, phoneNumber, email, address));
        try {
            response.sendRedirect("/customer");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void createNew(HttpServletRequest request, HttpServletResponse response) {
        String id = request.getParameter("id");
        int idType = Integer.parseInt(request.getParameter("idType"));
        String name = request.getParameter("name");
        String birthday = request.getParameter("birthday");
        String gender = request.getParameter("gender");
        String idCard = request.getParameter("idCard");
        String phoneNumber = request.getParameter("phoneNumber");
        String email = request.getParameter("email");
        String address = request.getParameter("address");
        customerService.addNew(new Customer( id, idType, name, birthday, gender, idCard, phoneNumber, email, address));

        try {
            response.sendRedirect("/customer");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
