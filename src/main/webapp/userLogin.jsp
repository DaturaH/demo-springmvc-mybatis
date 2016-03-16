<%@ page language="java" import = "java.util.*" pageEncoding = "UTF-8" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>

<html>
	<head>
		<title>userLogin</title>
	</head>
	<form action = "<%=path %>/muserController/userLogin.do" method = "POST">
		<table>
			<tr>
				<td>name: </td>
				<td><input type = "text" name = "name" > </td>
			</tr>
			<tr>
				<td>password: </td>
				<td><input type = "text" name = "password"> </td>
			</tr>
			<tr>
				<td>
					<input type = "submit" value = "login">
				</td>
				<td>
					<input type = "reset" value = "Reset">
				</td>
			</tr>
		</table>
	</form>
</html>
