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
        <title align="center">LIST TITLE,ISBN,EDITION AND NUMBER OF EACH BOOK SOLD FOR A PARTICULAR MONTH WITH MIN OF 2 BOOKS SOLD</title>
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
        SELECT TITLE,P.ISBN,EDITION,COUNT(*) AS NO_OF_BOOKS_SOLD
FROM PURCHASE P ,BOOKS_DETAILS B,PUBLISHER PB
WHERE P.ISBN=B.ISBN 
AND P.ISBN=PB.ISBN
AND P_DATE BETWEEN '${param.SAMPLE2}' AND '${param.SAMPLE3}'
GROUP BY P.ISBN,TITLE,EDITION
HAVING COUNT(*) >1
ORDER BY P.ISBN
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
