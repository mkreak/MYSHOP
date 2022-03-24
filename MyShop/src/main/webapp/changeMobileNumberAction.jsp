<%@ page import="project.DaoClass" %>
<%@ page import="java.sql.*" %>
<%String email=session.getAttribute("email").toString();

String newmobilenumber=request.getParameter("newmobilenumber");
String password=request.getParameter("password");
int check=0;
	
		try{
			
			Connection conn=DaoClass.getCon();
			Statement st=conn.createStatement();
			ResultSet rs=st.executeQuery("select * from user where email='"+email+"' and password='"+ password+"'");
			while(rs.next()){
				check=1;
				st.executeUpdate("update user set mobilenumber='"+newmobilenumber+"' where email='" +email+"'");
				System.out.println();
				response.sendRedirect("changeMobileNumber.jsp?msg=done");
			}
			if(check==0){
				response.sendRedirect("changeMobileNumber.jsp?msg=wrong");
	
			}
	
			}
			catch(Exception e){
				e.printStackTrace();

				//response.sendRedirect("changePassword.jsp?msg=invalid");

		
			}

%>