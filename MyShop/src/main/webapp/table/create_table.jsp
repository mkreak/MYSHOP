<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="project.DaoClass" %>
<%@ page import="java.sql.*" %>

<%
try{
	Connection conn=DaoClass.getCon();
	Statement stmt=conn.createStatement();
	System.out.println("before query");
	//String query1="Create table user(name varchar(45), email varchar(45) primary key, mobilenumber int,SecurityQuestion varchar(200),answer varchar(200), password varchar(45),address varchar(500),city varchar(45),state varchar(45),country varchar(45))";
	//String query2="Create table product(pid int,name varchar(200), category varchar(45) , price int,active varchar(20))";
	//String query3="Create table cart(email varchar(100),product_id int, quantity int, price int , total int, address varchar(200) ,city varchar(100), state varchar(100),country varchar(100), mobilenumber bigint,orderdate varchar(100),deliverydate varchar(100),paymentmethod varchar(100),transactionid varchar(100), status varchar(10))";
	String query4="Create table message(id int AUTO_INCREMENT primary key,email varchar(100), subject varchar(200) ,body varchar(1000))";

	//System.out.println(query1);
	//System.out.println(query2);
	//System.out.println(query3);
	System.out.println(query4);

	//stmt.execute(query1);
	//stmt.execute(query2);
	stmt.execute(query4);

	System.out.println("Table Created");
	conn.close();
	
}catch(Exception e)
{
	System.out.println("in catch of create table");

	e.printStackTrace();
}

%>
