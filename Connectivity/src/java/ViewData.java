
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;

public class ViewData extends HttpServlet {

    protected void processRequest(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ViewData</title>");
            out.println("</head>");
            out.println("<body>");
            try {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost/parth",
                        "root", "");
                Statement st = con.createStatement();
                String qry = "select * from crud";
                ResultSet rs = st.executeQuery(qry);
                out.println("<table border=1>");
                out.println("<thead><b>Student's List</b></thead>");
                out.println("<tr>");
                out.println("<th>Rlno<th>Name<th>City</tr>");
                while (rs.next()) {
                    int r;
                    String s, c;
                    r = rs.getInt("Roll_No");
                    s = rs.getString("Enter_Name");
                    c = rs.getString("Enter_City");
                    out.println("<tr>");
                    out.println("<td>" + r + "<td>" + s + "<td>" + c + "</tr>");
                }
                out.println("</table>");
                rs.close();
                st.close();
                con.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
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
