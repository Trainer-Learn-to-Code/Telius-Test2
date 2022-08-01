<%@ page import="java.sql.*" %>
<%ResultSet resultset,resultset1 =null;%>

<HTML>
<HEAD>
    <TITLE>Select element drop down box</TITLE>
</HEAD>

<BODY BGCOLOR=##f89ggh>
<form action="redirectingpage.jsp" method="post">


<%
    try{
Class.forName("com.mysql.jdbc.Driver");
Connection connection = 
         DriverManager.getConnection
            ("jdbc:mysql://192.168.18.245:3306/javadbtest","javadbtest","GFW5sdwfxt");

       Statement statement = connection.createStatement() ;

       resultset =statement.executeQuery("select * from customer") ;
%>

<center>
    <h1> Drop down box or select City from customer table</h1>
        <select name="city">
        <%  while(resultset.next()){ %>
            <option><%= resultset.getString(3)%></option>
        <% } %>
        </select>
</center>



<%
//**Should I input the codes here?**
        }
        catch(Exception e)
        {
             out.println("wrong entry"+e);
        }
%>
<%
    try{
Class.forName("com.mysql.jdbc.Driver");
Connection connection = 
         DriverManager.getConnection
            ("jdbc:mysql://192.168.18.245:3306/javadbtest","javadbtest","GFW5sdwfxt");

       Statement statement = connection.createStatement() ;

       resultset1 =statement.executeQuery("select * from contact,customer where customer.id=contact.Customer_Id") ;
%>

<center>
    <h1> Drop down box or select Customer type</h1>
        <select name=ctype>
        <%  while(resultset1.next()){ %>
            <option><%= resultset1.getString(4)%></option>
        <% } %>
        </select>
</center>


<%
//**Should I input the codes here?**
        }
        catch(Exception e)
        {
             out.println("wrong entry"+e);
        }
%>
<input type="submit" value="Next">
</form>
</BODY>
</HTML>
