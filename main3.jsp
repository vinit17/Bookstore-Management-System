<%-- 
    Document   : index
    Created on : Dec 4, 2016, 10:41:32 PM
    Author     : Hitesh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
                    <title>ONLINE BOOKSTORE</title>
    <link rel="stylesheet" type="text/css" href="style.css">
    </head>
    <body>
        
         <div style="float: right; width: 130px">
        <A href='login.jsp'>logout      </A>       
      </div>
    <h2 align='center'>ONLINE BOOKSTORE</h2>
    
    

<form action="response6.jsp">   
    <p><strong>Query7:</strong></p>
    <p>English Query: LIST BOOKS WITH MAX RATING<br/><br/>
        <input type = "submit" name ="submit" value = "SUBMIT" class= "btn btn-default"/></p><br/><br/>
</form>              
      
    
 <form action="response7.jsp">   
    <p><strong>Query8:</strong></p>
    <p>English Query: LIST ALL THE BOOKS WITH DISCOUNT MORE THAN ENTERED BELOW <br/><br/>
         <strong>Enter discount value:</strong><input type="text" name="SAMPLE10"/><br/><br/>
        <input type = "submit" name ="submit" value = "SUBMIT" class= "btn btn-default"/></p><br/><br/>
</form>     
    
 <form action="response8.jsp">   
    <p><strong>Query9:</strong></p>
    <p>English Query: LIST ALL THE BOOKS AVAILABLE FOR RENT <br/><br/>
        <input type = "submit" name ="submit" value = "SUBMIT" class= "btn btn-default"/></p><br/><br/>
</form>     
     <div style="float: left; width: 130px">
    <form action="main2.jsp">   
    <input type = "submit" name ="submit" value = "PREVIOUS" class= "btn btn-default"/>
</form>     
     </div>
 <%--
    <div style="float: right; width: 130px">
    <form action="index.jsp">   
    <input type = "submit" name ="submit" value = "HOME" class= "btn btn-default"/><br/><br/>
</form>    </div>
    </body>
</html>
 --%>