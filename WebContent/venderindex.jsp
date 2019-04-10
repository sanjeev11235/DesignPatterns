<!--Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE HTML> 
<html>
<head>
<title>Shoplist A Ecommerce Category Flat Bootstrap Responsive  Website Template | Home :: w3layouts</title>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all">
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="js/jquery-1.11.0.min.js"></script>
<!-- Custom Theme files -->
<link href="css/style.css" rel="stylesheet" type="text/css" media="all"/>
<!-- Custom Theme files -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Shoplist Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!--Google Fonts-->
<link href='//fonts.googleapis.com/css?family=Hind:400,500,300,600,700' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Oswald:400,700,300' rel='stylesheet' type='text/css'>
<!-- start-smoth-scrolling -->
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
	<script type="text/javascript">
			jQuery(document).ready(function($) {
				$(".scroll").click(function(event){		
					event.preventDefault();
					$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
				});
			});
	</script>
<!-- //end-smoth-scrolling -->
<script src="js/simpleCart.min.js"> </script>
<script src="js/bootstrap.min.js"></script>
</head>
<body>
<!--header strat here-->
<div class="header">
	<div class="container">
		<div class="header-main">
			<div class="top-nav">
				<div class="content white">
	              <nav class="navbar navbar-default" role="navigation">
					    <div class="navbar-header">
					        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
						        <span class="sr-only">Toggle navigation</span>
						        <span class="icon-bar"></span>
						        <span class="icon-bar"></span>
						        <span class="icon-bar"></span>
					        </button>
					        <div class="navbar-brand logo">
								<a href="index.jsp"><img src="images/logo1.png" alt=""></a>
							</div>
					    </div>
					   
				</div>
			</div>
			
			
			
					<%
			 
				String n = (String)session.getAttribute("Username");
				out.println("Welcome Vender");
				
				if(n==null)
				{
					%>

					<div class="head-signin">
						<h5><a href="login.jsp"><i class="hd-dign"></i>Sign in</a></h5>
						
					</div>
					
					<%  
				}
				else
				{
					%>
					

					<div class="head-signin">
					<h5><a href="#"><i class="hd-dign"></i>   <%=n %></a></h5>
						<h5><a href="logout.jsp">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspLogOut</a></h5>
						
					</div> 
					<%
				}
					
			
			
			
			%>           
                     <div class="clearfix"> </div>					
				</div>
			</div>
		 <div class="clearfix"> </div>
		</div>
	</div>
</div>

<!--header end here-->
<div>
   	 
   	
   	 <hr>
   	 <h3 style="margin-left:40%;color:#FF7700;">Hi Add Product Here</h3>
   	  <h3 style="margin-left:80%;color:#FF7700;"><a href = "uploadimg.jsp">Upload Image</a></h3> 
	 
	  <form action="proins.jsp" method="post" enctype="">
	 	<table	align="center"	width="500"	height="600">
	 		<tr>
	 			<td>Product Name</td>
	 			<td><input	type="text"	name="pname"></td>
	 		</tr>
	 		<tr>
	 			<td>Product Image</td>
	 			<td><input	type="file"	name="file"></td>
	 		</tr>
	 		<tr>
	 			<td>Product Price1</td>
	 			<td><input	type="text"	name="price1"></td>
	 		</tr>
	 		<tr>
	 			<td>Product Price2</td>
	 			<td><input	type="text"	name="price2"></td>
	 		</tr>
	 		<tr>
	 			<td>Product Quantity</td>
	 			<td><input	type="text"	name="quant"></td>
	 		</tr>
	 		<tr>
	 			<td>Product Discretion</td>
	 			<td><input	type="text"	name="dis"></td>
	 		</tr>
	 		
	 		<tr>
	 			<td></td>
	 			<td style="color:#FF7700;" align="center"><input	type="submit"	value="Save Data"></td>
	 		</tr>
	 	
	 	</table>
	 	
	 	</form>
	
	  
	 </div>


</body>
</html>