<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
 <%@page import="java.io.*" %>
<%@page	import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%
	
	String s1 = request.getParameter("Product_Name");
	String s2 = request.getParameter("Product_Image");
	String s3 = request.getParameter("Product_Price1");
	String s4 = request.getParameter("Product_Price2");
	String s5 = request.getParameter("Product_Quantity");
	String s6 = request.getParameter("Product_Discretion");
	
	
	File img1= new File(s2);
	String imgname= img1.getName();
	/* out.println(s1);
	out.println(s2);
	out.println(s3);
	out.println(s4);
	out.println(s5);
	out.println(s6); 
	out.println(imgname);  */  
	
	
	try
	{
		Class.forName("com.mysql.jdbc.Driver");
		Connection	c=DriverManager.getConnection("jdbc:mysql://localhost:3306/s","root","abhi");
		PreparedStatement	ps=c.prepareStatement("insert into Product(Product_Name,Product_Image,imgname,Product_Price1,Product_Price2,Product_Quantity,Product_Discretion)	values(?,?,?,?,?,?,?)");
		ps.setString(1, s1);
		ps.setString(4, s3);
		ps.setString(5, s4);
		ps.setString(6, s5);
		ps.setString(7, s6);
		
		
		FileInputStream	fis	=	new	FileInputStream(img1);
		ps.setBinaryStream(2,fis,(int)img1.length());
		ps.setString(3,imgname);
		
				
		int	c1=ps.executeUpdate();
		if(c1>0)
		{
			out.println("data	inserted..");
			response.sendRedirect("venderindex.jsp");
					
		}
		else
		{
			out.println("data	not	inserted..");
		}
	}
	catch(Exception	e)
	{
		System.out.println(e);
	}
	
	
	
	
	
		  try
			{	
				
				Class.forName("com.mysql.jdbc.Driver");
				Connection	c=DriverManager.getConnection("jdbc:mysql://localhost:3306/s","root","abhi");
				
				File file=new File("G:\\Programs\\New folder\\E-Shopping\\WebContent\\images"+imgname);
           		FileOutputStream fos=new FileOutputStream(file);
            	byte b[];
            	Blob blob;
            
            	PreparedStatement ps=c.prepareStatement("select Product_Image from ProductReg where imgname =?");
            	ps.setString(1,imgname); 
            	ResultSet rs=ps.executeQuery();
            
            	while(rs.next())
            	{
                blob=rs.getBlob("Product_Image");
                b=blob.getBytes(1,(int)blob.length());
                fos.write(b);
            	}
            
           		 ps.close();
           		 fos.close();
           		 c.close();
       		 }
       		 catch(Exception e)
       		 {
           		System.out.println(e);
       		 } 
	 
	
	
		
	
 %>
 
 
 


</body>
</html>