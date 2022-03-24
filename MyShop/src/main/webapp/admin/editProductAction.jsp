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
	Statement st=conn.createStatement();
	st.executeUpdate("update product set name='"+name+"',category='"+category+"',price='"+price+"',active='"+active+"' where pid='"+pid+"'");
	if(active.equals("no")){
		st.executeUpdate("delete from cart where product_id='"+pid+"' and address is NULL");
	}
	response.sendRedirect("allProductEditProduct.jsp?msg=done");
	
}catch(Exception e){
	e.printStackTrace();
	response.sendRedirect("allProductEditProduct.jsp?msg=wrong");
	
}


%>