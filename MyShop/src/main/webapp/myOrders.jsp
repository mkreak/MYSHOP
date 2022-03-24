<%@ page import="project.DaoClass" %>
<%@ page import="java.sql.*" %>
<%@include file="header.jsp" %>
<%@include file="../footer.jsp" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home</title>
</head>
<body>
<div style="color: white; text-align: center; font-size: 30px;">My Orders <i class='fab fa-elementor'></i></div>
<table>
        <thead>
          <tr>
            <th scope="col">S.No</th>
            <th scope="col">Product Name</th>
            <th scope="col">category</th>
            <th scope="col"><i class="fa fa-inr"></i>  Price</th>
            <th scope="col">Quantity</th>
            <th scope="col"><i class="fa fa-inr"></i> Sub Total</th>
            <th scope="col">Order Date</th>
             <th scope="col">Expected Delivery Date</th>
             <th scope="col">Payment Method</th>
              <th scope="col">Status</th>
              
          </tr>
        </thead>
        <tbody>
<%
int sno=0;
try{
	
	Connection conn=DaoClass.getCon();
	Statement st=conn.createStatement();
	ResultSet rs1=st.executeQuery("select * from cart inner join product where cart.product_id=product.pid and cart.email='"+email+"' and cart.orderdate is not NULL");
	while(rs1.next()){
		sno+=1;

%>
          <tr>
            <td><%=sno %></td>
            <td><%=rs1.getString(17) %></td>
            <td><%=rs1.getString(18) %></td>
            <td><i class="fa fa-inr"></i> <%=rs1.getString(19) %></td>
            <td><%=rs1.getString(3) %></td>
            <td><i class="fa fa-inr"></i> <%=rs1.getString(5) %></td>
             <td><%=rs1.getString(11) %></td>
              <td><%=rs1.getString(12) %></td>
               <td><%=rs1.getString(13) %></td>
               <td><%=rs1.getString(15) %></td>
            </tr>
         <%}
		}catch(Exception e){
			e.printStackTrace();
		}
	%>
        </tbody>
      </table>
      <br>
      <br>
      <br>

</body>
</html>