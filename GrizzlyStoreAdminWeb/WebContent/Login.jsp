<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="grizzlystore" method="post" >
<img src="grizzly.png" alt="Grizzly Store" width="200px" height="100px" /><br>
<input type="text" placeholder="Username" name="username"/>
<br>
<input type="password" placeholder="Password" name="password"/>
<br>
<input type="submit" value="login"/></form>
${status} 
</body>
</html>