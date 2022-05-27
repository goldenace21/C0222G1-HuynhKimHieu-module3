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
        try {
            String descripton = request.getParameter("description");
            float price = Float.parseFloat(request.getParameter("price"));
            int discountPercent = Integer.parseInt(request.getParameter("discount"));
            float discount = (float) (price * discountPercent *0.1);
            float total = price - discount;
            request.setAttribute("descripton", descripton);
            request.setAttribute("price", price);
            request.setAttribute("discount_percent", discountPercent);
            request.setAttribute("discount", discount);
            request.setAttribute("total", total);
            request.getRequestDispatcher("result.jsp").forward(request, response);
        } catch (Exception e) {
            request.getRequestDispatcher("exception.jsp").forward(request, response);
        }

    }
}
