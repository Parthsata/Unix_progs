
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;
import javax.servlet.RequestDispatcher;

public class UpdateData extends HttpServlet {

    protected void processRequest(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet UpdateData</title>");
            out.println("</head>");
            out.println("<body>");
            try {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost/Parth",
                        "root", "");
                Statement st = con.createStatement();
                String r, s, c;
                r = request.getParameter("txtRlno");
                s = request.getParameter("txtName");
                c = request.getParameter("txtCity");
                String qry = "Update crud set Enter_Name='" + s +"',Enter_City='"+c+"'  where Roll_No="+r;
 //out.print(qry);
                int rows = st.executeUpdate(qry);
                out.println(rows + "<b> Record(s) Updated</b><br>");
                st.close();
                con.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
            RequestDispatcher rd
                    = request.getRequestDispatcher("ViewData");
            rd.forward(request, response);
            out.println("</body>");
            out.println("</html>");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
