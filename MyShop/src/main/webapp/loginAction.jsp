<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="project.DaoClass" %>
<%@ page import="java.sql.*" %>
<%
String email=request.getParameter("email");
String password=request.getParameter("password");
if("admin@gmail.com".equals(email) && "admin".equals(password)){
	session.setAttribute("email", email);
	//session.setAttribute("password", password);
	response.sendRedirect("admin/adminHome.jsp");
}
else{
	int z=0;
	try{
		Connection conn=DaoClass.getCon();
		Statement st=conn.createStatement();
		ResultSet rs=st.executeQuery("select * from user where email='"+email+"'and password='"+password+"'");
		while(rs.next()){
			z=1;
			session.setAttribute("email",email);
			response.sendRedirect("home.jsp");
			}
		
		if(z==0){
			response.sendRedirect("login.jsp?msg=notexist");
		}
	}catch(Exception e){
		System.out.println("in catch of loginAction");
		response.sendRedirect("login.jsp?msg=invalid");
		e.printStackTrace();
	}
}


%>