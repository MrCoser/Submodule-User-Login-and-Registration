<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>User Login Form</title>
	</head>	
	<body>
		<div align=center>
			<h1>Login Form</h1>
		</div>
		<form action="<%= request.getContextPath() %>/login" method="post">
			<div align=center>			    
				<div class="input-box">
			       <input type="text" name="name" id="name" placeholder="Your name" />
			    </div>
			    
				<div class="input-box">
			       <input type="text" name="email" id="email" placeholder="Email address" />
			    </div>
			        
			    <div class="input-box">
			       <input type="password" name="password" id="password" placeholder="Password" />
			    </div>
			    
			    <a href="./change">
			    	<div class="forgot-pass">Forgot password?</div>
			    </a>
			    <input type="submit" value="Login" />
			</div>
		</form>
	</body>
</html> 