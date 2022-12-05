<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- New line below to use the JSP Standard Tag Library -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isErrorPage="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1 style="color: pink; text-align:center">Fruit Store</h1>
	<div class="container" style="background-color: pink; padding:15px">
		<table class="table" style="width: 100%; border-collapse:collapse">
			<thead>
				<tr>
					<th style="background-color: white; font-size: 40px; text-align: start">Name</th>
					<th style="background-color: white; font-size: 40px; text-align: start">Price</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="oneFruit" items="${fruitFromMyController}">
					<tr>
						<td style="background-color: white; font-size: 40px; border: solid 1px; border-left: none; border-right: none;"><c:out
								value="${oneFruit.name}"></c:out></td>
						<td style="background-color: white; font-size: 40px; border: solid 1px; border-left: none; border-right: none;"><c:out
								value="${oneFruit.price}"></c:out></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>