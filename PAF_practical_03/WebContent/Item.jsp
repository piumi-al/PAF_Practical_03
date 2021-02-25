<%@ page import="com.Item"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    
<!DOCTYPE html>
<html>

<head>
<meta charset="ISO-8859-1">
<title>Item Management</title>
</head>

<body>

	<form method="post" action="Item.jsp">
		Item code: <input name="itemCode" type="text"><br> Item
		name: <input name="itemName" type="text"><br> Item price:
		<input name="itemPrice" type="text"><br> Item
		description: <input name="itemDesc" type="text"><br> <input
		name="btnSubmit" type="submit" value="Save">
		</form>
		<%
		out.print(session.getAttribute("statusMsg"));
		%>
		<br>
		<%
		Item itemObj = new Item();
		out.print(itemObj.readItems());
	%>

</body>
</html>