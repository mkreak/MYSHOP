<%@ page import="project.DaoClass" %>
<%@ page import="java.sql.*" %>
<%String email=session.getAttribute("email").toString();

String SecurityQuestion=request.getParameter("SecurityQuestion");
String newanswer=request.getParameter("newanswer");
String password=request.getParameter("password");
int check=0;
	
		try{
			
			Connection conn=DaoClass.getCon();
			Statement st=conn.createStatement();
			ResultSet rs=st.executeQuery("select * from user where email='"+email+"' and password='"+ password+"'");
			while(rs.next()){
				check=1;
				st.executeUpdate("update user set SecurityQuestion='"+SecurityQuestion+"',answer='"+newanswer+"' where email='" +email+"'");
				System.out.println();
				response.sendRedirect("changeSecurityQuestion.jsp?msg=done");
			}
			if(check==0){
				response.sendRedirect("changeSecurityQuestion.jsp?msg=wrong");
	
			}
	
			}
			catch(Exception e){
				e.printStackTrace();

				//response.sendRedirect("changePassword.jsp?msg=invalid");

		
			}

%>