package controller;

import model.Employee;
import service.employee.EmployeeServiceImpl;
import service.employee.IEmployeeService;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "EmployeeController", urlPatterns = "/employee")
public class EmployeeController extends HttpServlet {

    IEmployeeService employeeService = new EmployeeServiceImpl();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "create":
                formCreate(request, response);
                break;
            case "search":
                goSearch(request, response);
                break;
            default:
                listEmployee(request, response);
                break;
        }
    }

    private void goSearch(HttpServletRequest request, HttpServletResponse response) {
        List<Employee> employeeList = new ArrayList<>();
        String name = request.getParameter("name");
        String address = request.getParameter("address");
        employeeList = employeeService.search(name, address);
        request.setAttribute("name",name);
        request.setAttribute("address",address);
        request.setAttribute("employeeList", employeeList);
        try {
            request.getRequestDispatcher("view/employee/employee.jsp").forward(request, response);
        } catch (ServletException | IOException e) {
            e.printStackTrace();
        }
    }

    private void formCreate(HttpServletRequest request, HttpServletResponse response) {
        try {
            request.getRequestDispatcher("view/employee/createEmployee.jsp").forward(request,response);
        } catch (ServletException | IOException e) {
            e.printStackTrace();
        }
    }

    private void listEmployee(HttpServletRequest request, HttpServletResponse response) {
        List<Employee> employeeList = new ArrayList<>();
        String name = request.getParameter("name");
        String address = request.getParameter("address");
        employeeList = employeeService.search(name, address);
        request.setAttribute("employeeList", employeeList);
        try {
            request.getRequestDispatcher("view/employee/employee.jsp").forward(request, response);
        } catch (ServletException | IOException e) {
            e.printStackTrace();
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "create":
                goCreate(request, response);
                break;
        }
    }

    private void goCreate(HttpServletRequest request, HttpServletResponse response) {
        String name = request.getParameter("name");
        String birthday = request.getParameter("birthday");
        String idCard = request.getParameter("idCard");
        double salary = Double.parseDouble(request.getParameter("salary"));
        String phoneNumber = request.getParameter("phoneNumber");
        String email = request.getParameter("email");
        String address = request.getParameter("address");
        int idPosition = Integer.parseInt(request.getParameter("idPosition"));
        int idEducation= Integer.parseInt(request.getParameter("idEducation"));
        int idDivision= Integer.parseInt(request.getParameter("idDivision"));
        String userName = request.getParameter("userName");
        employeeService.addNew(new Employee(name,birthday,idCard,salary,phoneNumber,email,address,idPosition,idEducation,idDivision,userName));

        try {
            response.sendRedirect("/employee");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
