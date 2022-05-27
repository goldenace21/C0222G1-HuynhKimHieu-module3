package controller;

import model.Customer;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "model.customer", value = "/customer-list")
public class CustomerController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Customer[] customer = new Customer[5];
        customer[0] = new Customer("huynh kim hieu", "20-11-2001", "hoi an","https://media.istockphoto.com/photos/aerial-view-of-lower-manhattan-thru-a-dsrl-camera-lens-new-york-city-picture-id1195626067?k=20&m=1195626067&s=170667a&w=0&h=6FGP8gaB4ISFmJNvPu6cywB0Xm9r-2s_rMa2BX_xoLk=");
        customer[1] = new Customer("nguyen thuy linh", "05-02-2001", "da lat","https://media.istockphoto.com/photos/photography-camera-lens-concept-picture-id628350724?k=20&m=628350724&s=612x612&w=0&h=wryI4x5XFiNvAB3VjopUWWb05qxdQZNbxfF0yKZkfsY=");
        customer[2] = new Customer("nguyen nhat minh", "12-3-2001", "da nang","https://media.istockphoto.com/photos/lens-image-dslr-manhattan-downtown-city-new-york-hand-picture-id901169654?k=20&m=901169654&s=170667a&w=0&h=ABs0HAU2I2g4WV6hgLoD1F_7NuivtgVT1J6s_EQs1VU=");
        customer[3] = new Customer("dang huu quang", "23-10-2001", "ha noi","https://images.unsplash.com/photo-1453728013993-6d66e9c9123a?crop=entropy&cs=tinysrgb&fm=jpg&ixlib=rb-1.2.1&q=80&raw_url=true&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8cGhvdG9ncmFwaGVyfGVufDB8fDB8fA%3D%3D&w=1000");
        customer[4] = new Customer("quynh giao", "07-06-2001", "ho chi minh","https://www.photographytalk.com/images/articles/2019/05/02/beginner_photography_tips_2.jpg");
        request.setAttribute("listcustomer",customer);
        request.getRequestDispatcher("Customer.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
