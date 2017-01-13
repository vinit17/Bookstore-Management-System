<%-- 
    Document   : index
    Created on : Dec 4, 2016, 10:41:32 PM
    Author     : Hitesh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.*,javax.servlet.http.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
                    <title>ONLINE BOOKSTORE</title>
    <link rel="stylesheet" type="text/css" href="style.css">
    </head>
    <body>
    <sql:setDataSource 
		var="usr"
			url="jdbc:oracle:thin:@localhost:1521:XE"
			driver="oracle.jdbc.OracleDriver"
			user="system" password="admin" 
		/>
		<sql:query dataSource="${usr}" var="result1" >
				select * from LOGIN_DETAILS where u_id=? 
				<sql:param value="${param.uname}"/>
		</sql:query>

		<c:forEach var="row1" items="${result1.rows}">
			<c:set var="flag1" scope="application" value="1"/>
		</c:forEach>

		<sql:query dataSource="${usr}" var="result2" >
			select * from LOGIN_DETAILS where u_id=? and password=?
			<sql:param value="${param.uname}"/>
			<sql:param value="${param.passwd}"/>
		</sql:query>

		<c:forEach var="row2" items="${result2.rows}">
		<c:set var="flag2" scope="application" value="1"/>
		</c:forEach>

			
			<c:choose>
			<c:when test="${flag2 eq 1}">
			<c:forEach var="row2" items="${result2.rows}">
		    <c:set var="flag2" scope="application" value="1"/>
                    <div style="float: right; width: 130px">
        <A href='login.jsp'>logout      </A>       
      </div>
                    		
				<h2 align="center">ONLINE BOOKSTORE</h2>
    
    
                    
                    <form action="response.jsp">   
    <p><strong>Query1:</strong></p>
    <p>English Query: LIST ALL THE USERS NAMES AND THEIR TOTAL PURCHASE FOR A PARTICULAR DATE <br/><br/>
         <strong>Enter date value:</strong><input type="text" name="SAMPLE1"/><br/><br/>
        <input type  = "submit"  name ="date" value = "SUBMIT" class= "btn btn-default"/></p><br/><br/>
</form>
	
    
 <form action="response1.jsp">   
    <p><strong>Query2:</strong></p>
    <p>English Query: LIST ALL THE CURRENT RENTER AND THE BOOKS DETAILS <br/><br/>
         <input type = "submit" name ="submit" value = "SUBMIT QUERY" class= "btn btn-default"/></p><br/><br/>
</form>     
    
 <form action="response2.jsp">   
    <p><strong>Query3:</strong></p>
    <p>English Query: LIST TITLE,ISBN,EDITION AND NUMBER OF EACH BOOK SOLD FOR A PARTICULAR MONTH WITH MIN OF 2 BOOKS SOLD <br/><br/>
        <strong>Enter start date value:</strong><input type="text" name="SAMPLE2"/><br/><br/>
        <strong>Enter end date value  :</strong><input type="text" name="SAMPLE3"/><br/><br/>         
        <input type = "submit" name ="submit" value = "SUBMIT QUERY" class= "btn btn-default"/></p><br/><br/>
</form>     
    
    <form action="main2.jsp">   
        
    <input type = "submit" name ="submit" value = "NEXT" class= "btn btn-default"/></p><br/><br/>
</form>     
			
		    </c:forEach>
			    <c:set var="flag1" scope="application" value="0"/>
				<c:set var="flag2" scope="application" value="0"/>
			
			</c:when>
			
			<c:when test="${flag1 eq 0}">
			
				<h1>
					User Not Registered ...
				</h1>
			
			
				<c:set var="user_flag" scope="application" value="0"/>
				<c:set var="flag" scope="application" value="0"/>
			</c:when>
			
			<c:otherwise>
			
				<h1>
					Invalid Password , Try Again !!!
				</h1>
			
				<c:set var="user_flag" scope="application" value="0"/>
				<c:set var="flag" scope="application" value="0"/>
			</c:otherwise>
			</c:choose>
    
    </body>
</html>