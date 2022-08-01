<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*,test.DAO,test.AddValue" %>
<%ResultSet resultset,resultset1 =null;%>


<form action="savepage.jsp" method="post">




	<input name="city" value="${param.city}">
		<input name="ctype" value="${param.ctype}">
		<input name="c1" id="c1">
				<input name="c2" id="c2">
		
	






<input type="submit" value="save">

</form>


