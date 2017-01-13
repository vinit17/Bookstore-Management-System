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
        SELECT TITLE,C.ISBN,P.NAME,COUNT(*) AS NO_OF_COPIES
FROM BOOKS_DETAILS B,COPY C,PUBLISHER P
WHERE B.ISBN=C.ISBN
AND B.ISBN=P.ISBN
AND C.TYPE='RENT'
GROUP BY TITLE,C.ISBN,P.NAME
HAVING COUNT(*)>1
ORDER BY TITLE 
			
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
