<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ page import ="java.util.ArrayList, java.util.Iterator, helper.Users, model.getPrint" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta http-equiv="X-UA-Compatible" content="ie=edge" />
<title>User Details</title>
</head>

<style>
	.content-table {
		border: 1px solid black;
		border-collapse: collapse;
		margin: 15px 0;
		font-size: 0.9em;
		min-width: 200px;
	}
	
	#button {
		background-color: green;
		color: white;
		height: 32px;
		width: 125px;
		border-radius: 15px;
		font-size: 18px;
	}
</style>

<body>
    <div align=center>
	<h1 style="font-size:40px; color:Tomato;">User Details</h1>
	        
	   <%
	   
	   Users user = new Users();
	   ArrayList al = user.getUsers();
	   Iterator itr =  al.iterator();

	   %> 
	  <table class="content-table">
	  	<tr class="content-table">
	  		<th class="content-table">ID</th>
	  		<th class="content-table">Name</th>
	  		<th class="content-table">Email</th>
	  	</tr>
	  	
	  	<%	  while (itr.hasNext())
		  {
		  	 getPrint gp = (getPrint) itr.next();
		   %>
	   <tr class="content-table"> 
	   		<td class="content-table"><%=gp.getId() %></td>
	   		<td class="content-table"><%=gp.getName() %></td>
			<td class="content-table"><%=gp.getEmail() %></td>
	   </tr>		
	   	<%} %>
	  </table>
	</div>
</body>
</html>