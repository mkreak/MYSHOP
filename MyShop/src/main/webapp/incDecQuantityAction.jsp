<%@ page import="project.DaoClass" %>
<%@ page import="java.sql.*" %>
<%

String email=session.getAttribute("email").toString();
String pid=request.getParameter("pid");
String incdec=request.getParameter("quantity");
int price=0;
int total=0;
int quantity=0;
int final_total=0;

try{
	Connection conn=DaoClass.getCon();
	Statement st=conn.createStatement();
	ResultSet rs=st.executeQuery("select * from cart where email='"+email+"'and product_id='"+pid+"' and address is NULL");
	while(rs.next())
	{
		price=rs.getInt(4);
		total=rs.getInt(5);
		quantity=rs.getInt(3);
	}
	if(quantity==1 && incdec.equals("dec")){
	
		response.sendRedirect("myCart.jsp?msg=notpossible");

	}
	else if(quantity!=1 && incdec.equals("dec")){
		total+=price;
		quantity+=1;
		st.executeUpdate("update cart set total='"+total+"',quantity='"+quantity+"' where email='"+email+"' and product_id='"+pid+"' and address is Null");
		response.sendRedirect("myCart.jsp?msg=inc");

	}else{
		total-=price;
		quantity-=1;
		st.executeUpdate("update cart set total='"+total+"',quantity='"+quantity+"' where email='"+email+"' and product_id='"+pid+"' and address is Null");
		response.sendRedirect("myCart.jsp?msg=dec");
		
	}
	
}catch(Exception e){
	e.printStackTrace();
	
}


%>