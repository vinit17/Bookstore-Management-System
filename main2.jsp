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
    
    

<form action="response3.jsp">   
    <p><strong>Query4:</strong></p>
    <p>English Query: LIST THE BOOKS AVAILABLE FOR RENTING WITH THE NUMBER OF COPIES MORE THAN 1<br/><br/>
                 <input type = "submit" name ="submit" value = "SUBMIT QUERY" class= "btn btn-default"/></p><br/><br/>
</form>              
      
    
 <form action="response4.jsp">   
    <p><strong>Query5:</strong></p>
    <p>English Query: LIST THE BOOKS RENTED BY A USER WITH THE RENTED ON AND VALID_TILL DETAILS <br/><br/>
         <strong>Enter First name:</strong><input type="text" name="SAMPLE4"/><br/>
         <strong>Enter Last name:</strong><input type="text" name="SAMPLE5"/><br/>
        <input type = "submit" name ="submit" value = "SUBMIT" class= "btn btn-default"/></p><br/><br/>
</form>     
    
 <form action="response5.jsp">   
    <p><strong>Query6:</strong></p>
    <p>English Query: LIST NAMES AND SALARY OF ALL STAFF MEMBERS<br/><br/>
                <input type = "submit" name ="submit" value = "SUBMIT QUERY" class= "btn btn-default"/></p><br/><br/>
</form>     
    <div style="float: left; width: 130px"> 
    <form action="index.jsp">   
    <input type = "submit" name ="submit" value = "PREVIOUS" class= "btn btn-default"/> 
</form> 
         </div>
    <div style="float: right; width: 130px">
    <form action="main3.jsp">   
    <input type = "submit" name ="submit" value = "NEXT" class= "btn btn-default"/><br/><br/>
</form>   </div> 
    </body>
</html>