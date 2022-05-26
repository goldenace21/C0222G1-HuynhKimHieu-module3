import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "Servlet",urlPatterns = "/index")
public class Servlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String descripton = request.getParameter("description");
        float price = Float.parseFloat(request.getParameter("price"));
        int discount_percent = Integer.parseInt(request.getParameter("discount"));
        float discount = (float) (price * discount_percent *0.1);
        float total = price - discount;

        request.setAttribute("descripton", descripton);
        request.setAttribute("price", price);
        request.setAttribute("discount_percent", discount_percent);
        request.setAttribute("discount", discount);
        request.setAttribute("total", total);
        request.getRequestDispatcher("index.jsp").forward(request, response);
    }
}
