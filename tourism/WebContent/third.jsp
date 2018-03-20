<%@page import="p1.DBconfig, java.sql.* "%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Mapping of crime against women</title>
</head>
<body>
 <%   String user =  request.getParameter("user");
      String pass = request.getParameter("pass");

    System.out.println(user);
    
    System.out.println(pass);
    Connection c= DBconfig.getConnection();
  Statement st= c.createStatement();
  String sql="select * from contact where Username='"+user+"' and Password='"+pass+"'";
  ResultSet rs= st.executeQuery("select * from contact where Username='"+user+"' and Password='"+pass+"'");
 System.out.println(sql);
  if (rs.next())
 {
	
 %>
 <%response.sendRedirect("violence.jsp"); %>
 <%}else { %>
 <h1 align="center">invalid or not registered</h1>
<p align="center">get back to home page and register first as a new user</p>
<%} %> 
</body>
</html>