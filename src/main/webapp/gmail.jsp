<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>1st page</title>
 <style>
        div
        {
            background-color: white;
            box-shadow: 10px 10px 10px 10px;
            width: 800px;
            margin: auto;
            margin-top: 100px;
            border-radius: 25px;
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
       button:hover{
        text-overflow: clip;
        color:white;
       
       }
       </style>

</head>
<body>
<div><br><h1>Create Gmail account</h1>
               <form action="Gmail1.jsp">
                <table align="center" cellspacing="20px">
                    
                    <tr><td><input type="text" name="fname" placeholder="enter first name"></td>
                        <td><input type="text" name="lname" placeholder="enter last name"></td></tr>
                    <tr><td colspan="2"><input type="email" name="uname" placeholder="create user name"></td></tr>     
                    <tr><td><input type="password" name="pswd" placeholder="enter password"></td>
                        <td><input type="password" name="cpswd" placeholder="confirm password"></td></tr>   
                   <tr><td><button align="center">next</button></td></tr>
                </table><br>
                
               </form>
            </div>
</body>
</html>