<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.*,javax.servlet.http.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%-- 
    Document   : response
    Created on : Dec 5, 2016, 12:08:25 AM
    Author     : Hitesh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title align="center">ONLINE BOOKSTORE</title>
    </head>
    <body>
        <h1>Result</h1>
         <sql:setDataSource 
		var="usr"
			url="jdbc:oracle:thin:@localhost:1521:XE"
			driver="oracle.jdbc.OracleDriver"
			user="system" password="admin" 
		/>
        
    <sql:query dataSource="${usr}" var="result">
        SELECT TITLE AS BOOK_NAME,B.ISBN,R_DATE AS RENTED_ON,VALID_TILL
FROM RENT R,USERS_DETAILS U,BOOKS_DETAILS B
WHERE R.U_ID=U.U_ID
AND R.ISBN=B.ISBN
AND F_NAME='${param.SAMPLE4}' AND L_NAME='${param.SAMPLE5}'
ORDER BY VALID_TILL 
			
    </sql:query>
        
    <table border="1">
        <!-- column headers -->
        <tr>
        <c:forEach var="columnName" items="${result.columnNames}">
            <th><c:out value="${columnName}"/></th>
        </c:forEach>
    </tr>
    <!-- column data -->
    <c:forEach var="row" items="${result.rowsByIndex}">
        <tr>
        <c:forEach var="column" items="${row}">
            <td><c:out value="${column}"/></td>
        </c:forEach>
        </tr>
    </c:forEach>
</table>
    </body>
</html>
