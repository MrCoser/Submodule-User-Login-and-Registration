<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />
   		<meta http-equiv="X-UA-Compatible" content="ie=edge" />
		<title>Create New Password</title>
	</head>
	<body>
		<div align=center>
			<h1>Create new password</h1>
		</div>
		<form action="<%= request.getContextPath() %>/change" method=post>
			<div align=center>
				<div class="input-box">
				   <label>Name</label>	
			       <input type="text" name="name" id="name" placeholder="Enter your name" />
			    </div>
			    
				<div class="input-box">
				   <label>Password</label>	
			       <input type="password" name="password" id="password" onblur="check();" placeholder="Enter your password" />
			    </div>
			        
			    <div class="input-box">
			       <label>Confirm Password</label>
			       <input type="password" name="confirm_password" id="confirm_password" onblur="check();" placeholder="Confirm your password" />
			       <span id="message"></span>
			    </div>
			    
			    <script>
		        	var check = function() {
		        	//	alert(document.getElementById('password').value + "  " + document.getElementById('confirm_password').value);
		        	  if (document.getElementById('password').value ==
		        	    document.getElementById('confirm_password').value) {
		        	    document.getElementById('message').style.color = 'green';
		        	    document.getElementById('message').innerHTML = 'matching';
		        	  } else {
		        	    document.getElementById('message').style.color = 'red';
		        	    document.getElementById('message').innerHTML = 'not matching';
		        	  }
		        	}
       		    </script>
       		    
			    <input type="submit" value="Save password" />
			</div>
		</form>
	</body>
</html>