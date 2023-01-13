<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
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

<table border="1">
		<tr>
			<th>Prod_ID</th>
			<th>Prod_Name</th>
			<th>Prod_Desc</th>
			<th>Price</th>
			<c:forEach items="${cartList}" var="cart">
				<tr>
					<td>${cart.getProdId()}</td>
					<td>${cart.getProdName()}</td>
					<td>${cart.getProdDesc()}</td>
					<td>${cart.getPrice()}</td>
				</tr>

			</c:forEach>

	</table>

</body>
</html>