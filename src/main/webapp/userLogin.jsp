<%@ page language="java" import = "java.util.*" pageEncoding = "UTF-8" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>


<html>
	<head>
		<title>userLogin</title>
		<script src="http://www.w3school.com.cn/jquery/jquery-1.11.1.min.js"></script>
<script>

$(document).ready(function(){


	$('#login').click(function() {
//		  xmlhttp=new XMLHttpRequest();

		if(document.all.name.value.length == 0){
			alert("姓名不能为空～");
			return false;
		}
		if(document.all.password.value.length == 0){
			alert("密码不能为空～");
			return false;
		}
//		xmlhttp.open("GET","${pageContext.request.contextPath}/muserController/userLogin.do?name=tom&password=1234",true);
//		xmlhttp.send();
//		alert("好好");
		var name = document.all.name.value;
		var password = document.all.password.value;
		$.ajax({
			type: "POST",
			url: "http://localhost:8080/zmarket/muserController/userLogin.do",
			data: "name=" + name + "&password=" + password,
	        dataType:"json",

			success : function(data) {

			   	if(data.note == "error0"){
			   		alert("sorry! 密码不正确！登录错误次数已经3次，请于10分钟后再尝试登录。");
		 		}else if(data.note == "error1"){
	   				alert("sorry! 密码不正确！");
		 		}else if(data.note == "error2"){
		 			alert("用户不存在");
				}else{
		 			window.location.href="muserController/listUser.do"; 

	  			}	
				
			}, error: function(XMLHttpRequest, textStatus, errorThrown) {

	            alert(textStatus);
	      }
		});  

	});
});



</script>
	</head>
	<form  name="form"  method = "POST">
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
					<input type = "button" id = "login" value = "login">
				</td>
				<td>
					<input type = "reset" value = "Reset">
				</td>
			</tr>
		    <tr>
				<td>
					<a href="<%=path %>/memberRegister.jsp">注册新用户</a><br/>
				</td>
				<td>
					<a href="<%=path %>/findOne.jsp">忘记密码？</a><br/>
				</td>
			</tr>
		</table>
	</form>
	
</html>
