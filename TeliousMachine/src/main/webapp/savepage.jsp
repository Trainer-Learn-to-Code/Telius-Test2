<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@page import="test.DAO"%>  
    
   <%--  <jsp:useBean id="u" class="test.AddValue"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/> --%> 
<%
String id1=request.getParameter("city");
String id2=request.getParameter("ctype");
String v1=request.getParameter("c1");
String v2=request.getParameter("c2");

 
int i=DAO.save(id1,id2,v1,v2);  
if(i>0){  

	   out.print("Success");

}else{  
    out.print("Error");
}  
%>  




%>