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
	
	String s1 = request.getParameter("name");
	String s2 = request.getParameter("file");
	
	//out.println(s1);
	//out.println(s2);
	
	
	File f = new File(s2);
	String imgname  = f.getName();
	//out.println(imgname);    
	
	
 try
	{
		Class.forName("com.mysql.jdbc.Driver");
		Connection	c=DriverManager.getConnection("jdbc:mysql://localhost:3306/s","root","abhi");
		PreparedStatement	ps=c.prepareStatement("insert into imgupload(name,image,imgname) values(?,?,?)");
		ps.setString(1, s1);
		FileInputStream	fis	=	new	FileInputStream(f);
		ps.setBinaryStream(2,(InputStream)fis,(int)(f.length()));
		ps.setString(3,imgname);
		
				
		int	c1=ps.executeUpdate();
		if(c1>0)
		{
			out.println("data	inserted..");
			response.sendRedirect("uploadimg.jsp");
					
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
				
				File file=new File("F:\\Programs\\New folder\\E-Shopping\\WebContent\\images\\"+imgname);
           		FileOutputStream fos=new FileOutputStream(file);
            	byte b[];
            	Blob blob;
            
            	PreparedStatement ps=c.prepareStatement("select image from imgupload where imgname =?");
            	ps.setString(1,imgname); 
            	ResultSet rs=ps.executeQuery();
            
            	while(rs.next())
            	{
                blob=rs.getBlob("image");
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