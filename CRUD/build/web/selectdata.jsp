<%@page contentType="text/html" pageEncoding="UTF-8"
        import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html;
              charset=UTF-8">
        <title>View Record</title>
    </head>
    <body>
        <%
            try {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost/parth",
                        "root", "");
                Statement st = con.createStatement();
                String qry = "select * from books";
                ResultSet rs = st.executeQuery(qry);
                out.println("<table border=1>");
                out.println("<thead><b>Books</b></thead>");
                out.println("<tr>");
                out.println("<th>Id<th>Book Name<th>Price</tr>");
                while (rs.next()) {

                    String s, c, r;
                    r = request.getParameter("id");
                    s = request.getParameter("bname");
                    c = request.getParameter("price");
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
        %>
    </body>
</html>