<%@ page import="project.DaoClass" %>
<%@ page import="java.sql.*" %>

<%
String email=session.getAttribute("email").toString();
String pid=request.getParameter("pid");
try{
	Connection conn=DaoClass.getCon();
	Statement st=conn.createStatement();
	st.executeUpdate("delete from cart where email='"+email+"'and product_id='"+pid+"' and address is NULL");
	response.sendRedirect("myCart.jsp?msg=removed");


}catch(Exception e){
	e.printStackTrace();
	
}


%>