<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>2nd page</title>
 <style>
            div
            {
                background-color: white;
                box-shadow: 10px 10px 10px 10px;
                width: 500px;
                margin: auto;
                margin-top: 100px;
                
            }
            input
            {
                padding: 10px;
                border-radius: 10px;
                font-size: x-large;
            }
           
            button{
                padding: 10px 135px;
                text-align: center;
                border-radius: 10px;
                background-color: rgb(9, 58, 238);
                font-size: larger;
                
            }
           h1{
            text-align: center;
           }
           h3
           {
           	text-align: center;
            font-family: Verdana, Geneva, Tahoma, sans-serif;
            font-size: large;
           }
           button:hover{
            text-overflow: clip;
            color:white;
           
           }
           </style>

</head>
<body>
<%@ page import="java.sql.*" %>
<%
String fname=request.getParameter("fname");
String lname=request.getParameter("lname");
String uname=request.getParameter("uname");
String pswd=request.getParameter("pswd");
String cpswd=request.getParameter("cpswd");
String Fullname=fname+" "+lname;
String password=pswd;
if(pswd.equals(cpswd))
{
	password=pswd;
}
%>

	 <div><br><h3><%= uname %></h3>
        <form action="gmail2.jsp">
    		 	 <input type="hidden" name="fullname" value="<%= Fullname %>" >
  			   	 <input type="hidden" name="username" value="<%= uname %>">
    			 <input type="hidden" name="password" value="<%= password %>">
            <table align="center" cellpadding="20px">
                <tr><td><input type="number" name="mno" placeholder="Mobile Number"></td></tr>
                <tr><td><input type="email" name="recmail" placeholder="recovery mail"></td></tr>
                <tr><td><input type="text" name="dob" placeholder="date of birth"></td></tr>
                <tr><td><input type="radio" name="gender" value="male">Male<input type="radio" name="gender" value="female">Female</td></tr>
                <tr><td><button>Register</button></td></tr>
            </table>
        </form>
       </div>
</body>
</html>