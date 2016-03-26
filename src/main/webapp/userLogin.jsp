<%@ page language="java" import = "java.util.*" pageEncoding = "UTF-8" %>
<%@ page import="org.springframework.web.context.support.WebApplicationContextUtils"%>
<%@ page import="org.springframework.context.ApplicationContext"%>
<%@ page import=" htq.service.*"%>
<%@ page import=" htq.model.*"%>

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
	$.ajax({
		type: "POST",
		url: "http://localhost:8080/zmarket/afficheController/listAffiche.do",
        dataType:"json",
		success : function(afficheList) {
            for(var i = 0;i<afficheList.length;i++){
                afficheForm = afficheList[i];
              //  alert(afficheForm.id);
                $("MARQUEE").append("<div>"+
                "<h3>"+afficheForm.name+"</h3>"+
                "<p>" +afficheForm.content+"</p>"+
                "</div>");
            }			
		}, error: function(XMLHttpRequest, textStatus, errorThrown) {
            alert(textStatus);
      }
	});  


	
	

	$('#login').click(function() {
//		  xmlhttp=new XMLHttpRequest();

		if(document.all.name.value.length == 0){
			alert("姓名不能为空～!");
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
<style type='text/css'>
div{word-break:break-all; width:"1000000"}
div p{word-break;:break-all;}
</style>
</head>
	<body>
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
	<table>
		<tr>
            <td height="142" align="center" valign="top">
            	<table >
                	<tr>
                  		<td height="43" background="image/shangchenggenggao.jpg">&nbsp;</td>
                	</tr>
                	<tr>
                		<td height="166" width="190" valign="middle" >                    
							<MARQUEE direction="up"  onmouseout="this.start()" onmouseover="this.stop()" scrollAmount="1" scrollDelay="1" class="linkBlack" behavior="scroll">	  
		                </marquee>                				
              		</tr>
            	</table>						
			</td>
    	</tr>
	</table>
	</body>
</html>
