import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "Servlet", urlPatterns = "/student")
public class Servlet extends HttpServlet {
    StudentRopo studentRopo = new StudentRopo();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        goLisst(request,response);
    }

    private void goLisst(HttpServletRequest request, HttpServletResponse response) {
        List<Student> studentList = studentRopo.selectAll();
        request.setAttribute("studentList",studentList);
        try {
            request.getRequestDispatcher("view/listStudent.jsp").forward(request,response);
        } catch (ServletException | IOException e) {
            e.printStackTrace();
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
