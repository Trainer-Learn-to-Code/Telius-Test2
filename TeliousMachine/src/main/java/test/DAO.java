package test;

import java.sql.*;

public class DAO {
	public static Connection getConnection(){  
	    Connection con=null;  
	    try{  
	        Class.forName("com.mysql.jdbc.Driver");  
	        con=DriverManager.getConnection("jdbc:mysql://192.168.18.245:3306/javadbtest","javadbtest","GFW5sdwfxt");  
	    }catch(Exception e){System.out.println(e);}  
	    return con;  
	}  
	public static int save(String id1,String id2,String v1,String v2){  
	    int status=0;  
	    try{ 
	    	
	        Connection con=getConnection();  
	        
		//tried with Adwaid
	   
	       /* PreparedStatement ps3=con.prepareStatement("insert into AddValue(Customer_Id,Contact_Id,value1,value2) values(?,?,?,?)");  

	        ResultSet rs=ps3.executeQuery("select ID from customer where id=?");
		ResultSet rs2=ps3.executeQuery("select ID from contact where id=?");
		String value1=null,value2=null;        
	        while(rs.next())
	        {
	        	
	        		 value1=(String)rs.getString(1);
	        	
	        }
	        
	        while(rs2.next())
	        {
	        	
	        	 value2=(String)rs2.getString(1);
	        	
	        }
	        ps3.setString(1,value1);  
	        ps3.setString(2,value2);  
	        ps3.setString(3,v1);  
	        ps3.setString(4,v2);    
	        status=ps3.executeUpdate();  
	    }catch(Exception e){System.out.println(e);}  
	    return status;  */
	     PreparedStatement ps3=con.prepareStatement("insert into AddValue(Customer_Id,Contact_Id,value1,value2) values(?,?,?,?)");  

	       
	       
	        ps3.setString(1,id1);  
	        ps3.setString(2,id2);  
	        ps3.setString(3,v1);  
	        ps3.setString(4,v2);    
	        status=ps3.executeUpdate();  
	    }catch(Exception e){System.out.println(e);}  
	    return status;    
	}
	
	
}
