<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="ISO-8859-1" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <title>Registration Form</title>
  </head>
  <body>
    <div class="container" align="center">
      <h1>Registration Form</h1>
      <form action="<%= request.getContextPath() %>/register" method="post">
        <div class="input-box">
          <label>Name : 
          	<input type="text" name="name" id="name" placeholder="Enter your name" />
          </label> 	
        </div>

        <div class="input-box">
          <label>Email : 
          	<input type="text" name="email" id="email" placeholder="Enter your email" />
          </label> 	
        </div>

        <div class="input-box">
          <label>Password :
          	<input type="password" name="password" id="password" onblur="check();" placeholder="Enter your password" />
          </label>	
        </div>
        
        <div class="input-box">
          <label>Confirm Password :
          	<input type="password" name="confirm_password" id="confirm_password" onblur="check();" placeholder="Confirm your password" />
          	<span id='message'></span>
          </label>	
        </div>
        
        
        <div class="check-box">
          <div class="check-term">
            <div class="check">
              <input type="checkbox" id="check-terms" name="Agree" />
              <label for="check-terms">I accept all terms and conditions</label>
            </div>  
          </div>
        </div>  
        
        <script>
        	var check = function() {
        	//	alert(document.getElementById('password').value+"  "+ document.getElementById('confirm_password').value);
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
        
        <input type="submit" value="Submit" />
      </form>
    </div>
  </body>
</html>