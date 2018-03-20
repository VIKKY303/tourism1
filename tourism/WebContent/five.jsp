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
 <%  
    String name =  request.getParameter("name");
    
    String email = request.getParameter("email");
   
    String subject = request.getParameter("subject");
   
    String text = request.getParameter("text");
    
    System.out.println(name);
    System.out.println(email);
    System.out.println(subject);
    System.out.println(text);
     Connection c= DBconfig.getConnection();
     Statement st= c.createStatement();
  String sql="insert into contact values('"+name+"','"+email+"','"+subject+"','"+text+"')";
          int rs= st.executeUpdate("insert into contact values('"+name+"','"+email+"','"+subject+"','"+text+"')");
            System.out.println(sql);
%>
 <% response.sendRedirect("contact.html");


%>
</body>
</html>