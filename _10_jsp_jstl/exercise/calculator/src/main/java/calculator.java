import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "calculator", urlPatterns = "/index")
public class calculator extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        double result = 0;
        double number1;
        String oparator;
        double number2;

             number1 = Double.parseDouble(request.getParameter("number1"));
             oparator = request.getParameter("operator");
             number2 = Double.parseDouble(request.getParameter("number2"));
            switch (oparator) {
                case "addition" :
                    result = number1 + number2;
                    break;
                case "subtraction" :
                    result = number1 - number2;
                    break;
                case "multiplication" :
                    result = number1 * number2;
                    break;
                case "division" :
                    result = number1 / number2;
                    break;
            }
            request.setAttribute("number1", number1);
            request.setAttribute("number2", number2);
            request.setAttribute("oparator", oparator);
            request.setAttribute("result", result);
            request.getRequestDispatcher("index.jsp").forward(request, response);



    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
