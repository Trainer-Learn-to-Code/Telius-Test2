    <%@page import="test.DAO"%>  
    <jsp:useBean id="u" class="test.AddTable"></jsp:useBean>  
    <jsp:setProperty property="*" name="u"/> 
    <%-- 
     <%String city=request.getParameter("city");
     String ctype=request.getParameter("ctype"); %> --%>
     
     
      
    <%  
    int i=DAO.save(u);  
    if(i>0){  

response.sendRedirect("Success");
    
    }else{  
        out.print("Error");
    }  
    %>  