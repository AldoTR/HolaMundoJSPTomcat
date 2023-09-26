<%-- 
    Document   : index.jsp
    Created on : Sep 20, 2023, 8:15:07 AM
    Author     : aldotr
--%>

<%@page import="java.io.FileInputStream"%>
<%@page import="java.util.Properties"%>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.ResultSet" %>

<%
Properties properties = new Properties();
properties.loadFromXML(new FileInputStream("db.properties"));

Connection connection = DriverManager.getConnection(
    "jdbc:postgresql://" + properties.getProperty("database.host") + ":" + properties.getProperty("database.port") + "/" + properties.getProperty("database.name"),
    properties.getProperty("database.user"),
    properties.getProperty("database.password")
);

if (connection != null) {
    out.println("La conexión a la base de datos se estableció correctamente.");
} else {
    out.println("La conexión a la base de datos no se pudo establecer.");
}
%>

    out.println("<h1>Hola mundo!</h1>");

<html>
<head>
<title>Hola mundo</title>
</head>
<body>
<h1>Hola mundo!</h1>
</body>
</html>