<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="java.util.*" %>
<%@ page import="java.lang.*" %>

<%--validacion de sesion--%>
<%
  HttpSession misession= (HttpSession) request.getSession();
  String usuario= (String) misession.getAttribute("usuario");
  if(misession == null || misession.getAttribute("usuario") == null){
    out.print("<link href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css\" rel=\"stylesheet\" integrity=\"sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN\" crossorigin=\"anonymous\">");
    out.println("<center>");
    out.println("<h3>No tiene permisos para acceder a esta seccion</h3>");
    out.println("<a class='btn btn-primary' href='/WebJava04_war_exploded/login.jsp'>Ir a pagina de acceso</a>");
    out.println("</center>");
    return;
  }
%>


<%
  String driver = "com.mysql.cj.jdbc.Driver";
  String url   = "jdbc:mysql://localhost:3306/test";
  String user   = "root";
  String pass   = "admin";

  Class.forName(driver);
  Connection xcon = DriverManager.getConnection(url, user, pass);

  String sql = "select * from areas";
  Statement stm = xcon.createStatement();
  ResultSet rs = stm.executeQuery(sql);
%>

<!DOCTYPE html>

<html>
<head>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
  <title>Title</title>
</head>
<body>
<div class="container">
  <h1>Listado de Areas</h1>
  <table class="table table-striped">
    <thead>
    <tr>
      <th scope="col">CODIGO</th>
      <th scope="col">NOMBRE</th>
      <th scope="col">ESTADO</th>
    </tr>
    </thead>
    <tbody>
    <%
      while (rs.next()) {
        out.print("<tr>");
        out.print("<td>" + rs.getString(1) + "</td>");
        out.print("<td>" + rs.getString(2) + "</td>");
        out.print("<td>" + rs.getString(3) + "</td>");
        out.print("</tr>");
      }
    %>
    </tbody>
  </table>
</div>
</body>

</html>
