<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="project.DaoClass" %>
<%@ page import="java.sql.*" %>
<%
String name=request.getParameter("name");
String email=request.getParameter("email");
String mobilenumber=request.getParameter("mobilenumber");
String SecurityQuestion=request.getParameter("SecurityQuestion");
String answer=request.getParameter("answer");
String password=request.getParameter("password");
String address="";
String city="";
String state="";
String country="";
try{
	Connection conn=DaoClass.getCon();
	PreparedStatement ps=conn.prepareStatement("insert into user values(?,?,?,?,?,?,?,?,?,?)");
	ps.setString(1,name);
	ps.setString(2,email);
	ps.setString(3,mobilenumber);
	ps.setString(4,SecurityQuestion);
	ps.setString(5,answer);
	ps.setString(6,password);
	ps.setString(7,address);
	ps.setString(8,city);
	ps.setString(9,state);
	ps.setString(10,country);
	ps.executeUpdate();
	response.sendRedirect("signup.jsp?msg=valid");
	
}catch(Exception e){
	System.out.println("in catch of signupaction");
	response.sendRedirect("signup.jsp?msg=invalid");
	e.printStackTrace();
}

%>