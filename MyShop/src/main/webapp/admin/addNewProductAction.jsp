<%@ page import="project.DaoClass" %>
<%@ page import="java.sql.*" %>

<%
String pid=request.getParameter("pid");
String name=request.getParameter("name");
String category=request.getParameter("category");
String price =request.getParameter("price");
String active=request.getParameter("active");

try{
	Connection conn=DaoClass.getCon();
	PreparedStatement ps=conn.prepareStatement("insert into product values(?,?,?,?,?)");
	ps.setString(1,pid);
	ps.setString(2,name);
	ps.setString(3,category);
	ps.setString(4,price);
	ps.setString(5,active);
	ps.executeUpdate();
	response.sendRedirect("addNewProduct.jsp?msg=done");
	
}catch(Exception e){
	response.sendRedirect("addNewProduct.jsp?msg=wrong");
	e.printStackTrace();
	
}

%>