 <%@page import="java.io.*" %>
<%@page	import="java.sql.*" %>

<!DOCTYPE HTML>
<html>
<head>
<title>Shoplist A Ecommerce Category Flat Bootstrap Responsive  Website Template | Home :: w3layouts</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Watches Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<!-- Custom Theme files -->
<link href="css/style.css" rel='stylesheet' type='text/css' />
<link href="css/component.css" rel='stylesheet' type='text/css' />
<!-- Custom Theme files -->
<!--webfont-->
<link href='//fonts.googleapis.com/css?family=PT+Sans+Narrow:400,700' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Dorsa' rel='stylesheet' type='text/css'>
<script type="text/javascript" src="js/jquery-1.11.1.min.js"></script>
<!-- start menu -->
<link href="css/megamenu.css" rel="stylesheet" type="text/css" media="all" />
<script type="text/javascript" src="js/megamenu.js"></script>
<script>$(document).ready(function(){$(".megamenu").megamenu();});</script>
<script src="js/jquery.easydropdown.js"></script>
<script src="js/simpleCart.min.js"> </script>
</head>
<body>

	<div class="men_banner">
   	  <div class="container">
   	  	<div class="header_top">
   	  	  
           <div class="header_top_right">
		  	 <div class="lang_list">
				
			 </div>
			 
			 
			
		<%
			 
					 response.setHeader("cache-control","no-cache,no-store,must-revalidate");
					 response.setDateHeader("Expires",0);
				   	 response.setHeader("Pragma","no-cache");
			 
			 		 String name=(String)session.getAttribute("name");
				     if(name==null)
			 	     {
			  %>
			 <ul class="header_user_info">
			  <a class="login" href="login.jsp">
				<i class="user"> </i> 
				
			  </a>
			  <div class="clearfix"> </div>
		     </ul>
		      <%
		     	}
		     else
		     {	
		     %>
		     	<ul class="header_user_info">
			  	<a class="login" href="logout.jsp">
				<i class="user"> </i> 
				<li class="user_desc"><%out.print(name); %></li>
				<li class="user_desc">&nbsp&nbsp LogOut</li>
			  </a>
			  <div class="clearfix"> </div>
		     </ul>
		     <%	
		     }
		      %>
		     
		    	 <!----search-scripts---->
				 <script src="js/classie1.js"></script>
				 <script src="js/uisearch.js"></script>
				   <script>
					 new UISearch( document.getElementById( 'sb-search' ) );
				   </script>
					<!----//search-scripts---->
		            <div class="clearfix"> </div>
			 </div>
		     <div class="clearfix"> </div>
	    </div>
   	  <div class="header_bottom">
	   <div class="logo">
		  <h1><a href="venderindex.jsp"></a></h1>
	   </div>
	  
	  

  
   </div>
   
   </div>
   </div>
   
   
   
   	 <div>
   	 
   	
   	 <hr>
   	 <h3 style="margin-left:40%;color:#00cdcd;">Upload Image Here.</h3>
   	 
	 
	 <form action="upload.jsp" method="get" encType="multipart/form-data">
	 	<table align="center"	width="200"	height="250">
		<tr>
			<td>ImgName</td>
			<td><input type="text" name="name"> </td>
		</tr>
		<tr>
			<td>Image</td>
			<td><input type="file" name="file"> </td>
		</tr>
		<tr>
			<td></td>
			<td style="color:#00cdcd;" align="center"><input type="submit" value="Upload"></td>
		</tr>
	</table>

	</form>
	
 </div>
   
 
	 
	 
	 
	
</body>
</html>		