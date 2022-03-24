<%@ page import="project.DaoClass" %>
<%@ page import="java.sql.*" %>
<%
String product_id=request.getParameter("product_id");
String email=request.getParameter("email");
String status="cancel";

try{
	
	Connection conn=DaoClass.getCon();
	Statement st=conn.createStatement();
	st.executeUpdate("update cart set status='"+status+"' where product_id= '"+product_id+"' and email='"+email+"' and address is not NULL");
	
	response.sendRedirect("OrdersReceived.jsp?msg=cancel");
	
	}
	catch(Exception e){
		
		response.sendRedirect("messageUs.jsp?msg=invalid");
		e.printStackTrace();

	}

%>