<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>submission page</title>
 <style>
            div
            {
                background-color: white;
                box-shadow: 10px 10px 10px 10px;
                width: 500px;
                margin: auto;
                margin-top: 100px;
                
            }
           
            
           h1{
            text-align: center;
            font-family: Verdana, Geneva, Tahoma, sans-serif;
            
           }
          
           </style>
</head>
<body>
	<%@ page import="java.sql.*" %>
	<%
	String Fullname=request.getParameter("fullname");
	String uname=request.getParameter("username");
	String password=request.getParameter("password");
	long mobilenumber=Long.parseLong(request.getParameter("mno"));
	String recmail=request.getParameter("recmail");
	String dob=request.getParameter("dob");
	String gender=request.getParameter("gender");
	
	try
	{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","nbatch","nbatch");
		PreparedStatement ps=con.prepareStatement("insert into gmail values(?,?,?,?,?,?,?)");
		ps.setString(1,Fullname);
		ps.setString(2,uname);
		ps.setString(3,password);
		ps.setLong(4,mobilenumber);
		ps.setString(5,recmail);
		ps.setString(6,dob);
		ps.setString(7,gender);
		int i=ps.executeUpdate();
	%>	
		
		<div>
    <table align="center" cellpadding="20px"><tr><td><h1><%out.print(i+"Registration Succesful");%></h1></td></tr></table>
		</div>
		
		
	<%	
		con.close();
	}
	catch(Exception e)
	{
		out.println(e);	
	}
	
	%>
	
</body>
</html>