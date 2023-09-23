<%@page contentType="text/html" pageEncoding="UTF-8"
        import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html;
              charset=UTF-8">
        <title>Delete Record</title>
    </head>
    <body>
        <%
            try {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost/parth",
                        "root", "");
                Statement st = con.createStatement();
                String r;
                r = request.getParameter("txtRlno");
                String qry = "Delete from crud where Enter_RollNo=" + r;
                int rows = st.executeUpdate(qry);
                out.println(rows + "<b> Record(s) Deletede</b>");
                st.close();
                con.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        %>
    </body>
</html>