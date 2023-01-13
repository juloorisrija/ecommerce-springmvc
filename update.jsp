<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
body{
background-image:url("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQQFlcC6upF5b9WWQeyS8nWiJZP5i-JCJYfcg&usqp=CAU");
background-repeat: no-repeat;
background-size: cover;

}
</style>
</head>
<body>
<h1>Update Product!!</h1>
	<form action="<%=request.getContextPath() %>/product/updateProduct" method="post">
		<input type = "number" value = ${id} name = prodId readonly="readonly"/><br/><br/>
		<input type = "text" value = ${name} name = prodName /><br/><br/>
		<input type = "text" value = ${desc} name = prodDesc /><br/><br/>
		<input type = "number" value = ${price} name = price /><br/><br/>
		<input type = "submit" value = "Update"/>
	</form>
	<h3 style="color:red">${updateMsg}</h3>

</body>
</html>