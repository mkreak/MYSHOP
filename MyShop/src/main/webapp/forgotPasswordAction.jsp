<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="project.DaoClass" %>
<%@ page import="java.sql.*" %>
<% 
String email=request.getParameter("email");
String mobilenumber=request.getParameter("mobilenumber");
String SecurityQuestion=request.getParameter("SecurityQuestion");
String answer=request.getParameter("answer");
String newpassword=request.getParameter("newpassword");

int c=0;

try{
	Connection conn= DaoClass.getCon();
	Statement st=conn.createStatement();
	ResultSet rs=st.executeQuery("select * from user where email='"+email+"' and mobilenumber='"+mobilenumber+"'and SecurityQuestion='"+SecurityQuestion+"'and answer='"+answer+"'");
	while(rs.next()){
		c=1;
		st.executeUpdate("update user set password='" +newpassword+"' where email='"+email+"'");
		response.sendRedirect("forgotPassword.jsp?msg=done");
	}
	if(c==0){
		response.sendRedirect("forgotPassword.jsp?msg=invalid");
	}
}catch(Exception e){
	
	System.out.println(e);
}

%>