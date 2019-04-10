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

try
{	
	
	Class.forName("com.mysql.jdbc.Driver");
	Connection	con=DriverManager.getConnection("jdbc:mysql://localhost:3306/s","root","abhi");
	
	File file=new File("D:\\E-Shoopingimages\\"+".jpg");
		FileOutputStream fos=new FileOutputStream(file);
	byte b[];
	

	Statement stmt=con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);

	ResultSet rs=stmt.executeQuery("select image from imgupload");

	if(rs.next())
	{
		rs.first();
		Blob blob = rs.getBlob("image");
		InputStream in = rs.getBinaryStream(1);
		int c = 0;
		while ((c = in.read()) > -1) {
			fos.write(c);
		}
		
		
	}
}
			
		
	 catch(Exception e)
	 {
		System.out.println(e);
	 } 







%>
</body>
</html>