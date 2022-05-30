package controller;

import models.Product;
import repository.impl.ProductRepositoryImpl;
import service.IProductService;
import service.impl.productServiceImpl;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ProductController", urlPatterns = "/product")
public class ProductController extends HttpServlet {

    private IProductService productService = new productServiceImpl();
    private ProductRepositoryImpl productRepository = new ProductRepositoryImpl();

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action =request.getParameter("action");
        if (action==null){
            action="";
        }
        switch (action){
            case "add":
                // trả về một form thêm mới
                save(request,response);
                break;
            case "edit":
                // chỉnh sửa
                break;
            case "delete":
                break;
            case "search":
                break;
            default:
                showProductList(request,response);
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action =request.getParameter("action");
        if (action==null){
            action="";
        }
        switch (action){
            case "add":
                // trả về một form thêm mới
                showFormCreate(request,response);
                break;
            case "edit":
                // chỉnh sửa
                break;
            case "delete":
                break;
            case "search":
                break;
            default:
                showProductList(request,response);
        }
    }

    private void showFormCreate(HttpServletRequest request, HttpServletResponse response) {
        try {
            request.getRequestDispatcher("view/product/add.jsp").forward(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void showProductList(HttpServletRequest request, HttpServletResponse response) {
        List<Product> products = productService.findAll();
        request.setAttribute("products", products);

        try {
            request.getRequestDispatcher("view/product/list.jsp").forward(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }


    private void save(HttpServletRequest request, HttpServletResponse response) {
        int id = (int) (Math.random() * 1000);
        String name = request.getParameter("name");
        String price = request.getParameter("price");

        productRepository.save(new Product(id,name,price));

        request.setAttribute("message" ,"register new student successfully!!");
        showProductList(request,response);
    }
}
