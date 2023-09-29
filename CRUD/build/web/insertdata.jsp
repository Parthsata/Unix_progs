      <%@page contentType="text/html" pageEncoding="UTF-8"
        import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html;
              charset=UTF-8">
        <title>Insert Record</title>
    </head>
    <body>
        <%
            try {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost/parth",
                        "root", "");
                Statement st = con.createStatement();
                String r, s, c;
                r = request.getParameter("id");
                s = request.getParameter("bname");
                c = request.getParameter("price");
                String qry = "Insert into books values(" + r + ",'" + s + "','" + c + "')";
                int rows = st.executeUpdate(qry);
                out.println(rows + "<b> Record(s) Inserted</b><br>");
                st.close();
                con.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        %>
    </body>
</html> 