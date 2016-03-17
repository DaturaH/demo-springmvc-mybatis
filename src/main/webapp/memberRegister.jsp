<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>会员注册</title>
<style type="text/css">
<!--
.style1 {color: #FF0000}
.style2 {color: #000000}
-->
</style>
 <link href="../css/css1.css" rel="stylesheet" type="text/css">
<script type="text/javascript">
<!--
function SelectSubmit(){
	document.all.registerForm.submit();
	return true;
}
function submit1(){
	if(document.all.name.value.length==0){
	alert("请填写用户名!");
		return false;
	}
	if(document.all.name.value.length==0){
		alert("请填写真实姓名!");
		return false;
	}
	if(document.all.password.value.length==0){
		alert("请填写密码!");
		return false;
	}
	if(document.all.password2.value.length==0){
		alert("请填写密码!");
		return false;
	}

	if(document.all.question.value.length==0){
		alert("请选择问题!");
		return false;
	}
	if(document.all.result.value.length==0){
		alert("请填写问题答案!");
		return false;
	}
	if(document.all.password.value!=document.all.password2.value){
		alert("两次密码输入不相符！");
		return false;
	}


	 //在JavaScript中，正则表达式只能使用"/"开头和结束，不能使用双引号
	var Expression=/[^\u4E00-\u9FA5]/; 
	var objExp=new RegExp(Expression);
	if(objExp.test(registerForm.username.value)!=true){
		alert("用户名只可以是英文名称!");
		return false;
	}
	
	document.all.registerForm.submit();
	return true;
	
}

function checkemail(email){
	var str=email;
	var Expression=/\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*/; 
	var objExp=new RegExp(Expression);
	if(objExp.test(str)==true){
		return true;
	}else{
		return false;
	}
}	
function reset(){
	document.all.registerForm.reset();
}
function checkusername(){//用于添加“检查按钮”的Javascript
	 //在JavaScript中，正则表达式只能使用"/"开头和结束，不能使用双引号
	var Expression=/[^\u4E00-\u9FA5]/; 
	var objExp=new RegExp(Expression);
	if(objExp.test(registerForm.username.value)!=true){
		alert("用户名只可以是英文名称!");
		return false;
	}
	else{
		window.location.href='checkuser.do?username='+registerForm.username.value
		return true;
	}
}


//-->
</script>
</head>


<body>
<div align="center">
  <p class="blue"><strong>会员注册
  </strong></p>
  <form action="<%=path %>/muserController/addUser.do" onsubmit="return submit1()" method="POST">  
	<table>
      <tr>
        <td width="105" height="35" bgcolor="#EFF6FE">
        <div align="center">会员名称</div></td>
        <td width="187"><div align="center">
          <input type="text" name="name">
          <span class="style1">*</span></div></td>
      </tr>
      <tr>
        <td height="35" bgcolor="#EFF6FE">
        <div align="center">会员密码</div></td>
        <td><div align="center">
          <input type="password" name="password">
          <span class="style1">*</span></div></td>
      </tr>
      <tr>
        <td height="35" bgcolor="#EFF6FE">
        <div align="center">密码确认</div></td>
        <td><div align="center">
          <input type="password" name="password2">
          <span class="style1">*</span></div></td>
      </tr>
      <tr>
        <td height="35" bgcolor="#EFF6FE">
        <div align="center">真实姓名</div></td>
        <td><div align="center">
          <input type="text" name="reallyName">
          <span class="style1">*</span></div></td>
      </tr>
      <tr>
        <td height="35" bgcolor="#EFF6FE">
        <div align="center">地址</div></td>
        <td><div align="center">
          <input type="text" name="address">
          <span class="style1">*</span></div></td>
      </tr>
      <tr>
        <td height="35" bgcolor="#EFF6FE">
        <div align="center">年龄</div></td>
        <td><div align="center">
          <input type="text" name="age" value="18">
          <span class="style2">*</span></div></td>
      </tr>
      <tr>
        <td height="35" bgcolor="#EFF6FE">
        <div align="center">找回密码问题</div></td>
        <td><div align="center">
          <select id="question" onkeypress="trigger(3)" onkeyup="edit(3)" name="question">
		  <option value="1+1=？">1+1=</option>
		  <option value="我的爱好是什么？">我的爱好是什么？</option>
		  <option value="我姓什么？">我的爱好是什么？</option>
          </select>
          <span class="style1">*</span></div></td>
      </tr>
      <tr>
        <td height="35" bgcolor="#EFF6FE">
        <div align="center">答案</div></td>
        <td><div align="center">
          <input type="text" name="result">
          <span class="style1">*</span></div></td>
      </tr>

	  <tr>
      	<td>
		    <input type="submit" value="Save" onClick="return submit1();">
	    </td>
        <td>
		    <input type="reset" value="Reset">
	    </td>
	  </tr>
    </table>
   <p><span class="style1">*</span>：<span class="blue">代表必添项目</span>
    *：<span class="blue">代表非必添项目</span></p>
    </form>
  <p>&nbsp;  </p>
</div>
</body>
</html>
