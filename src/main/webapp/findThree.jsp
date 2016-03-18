<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>找回密码步骤三</title>
</head>
<script type ="text/javascript">
function checkEmpty(form){
for(i=0;i<form.length;i++){
if(form.elements[i].value==""){
alert("表单信息不能为空");
return false;
}
}
if(document.form.password.value!=document.form.passwordOne.value){
window.alert("您两次输入的密码不一致，请重新输入");
return false;
}
}
</script>
<body>
<div align="center">
  <p class="blue"><strong>输入新密码</strong></p>
  <form name="form" method="post" action="<%=path %>/muserController/findFour.do" onSubmit="return checkEmpty(form)">
	<table>
      <tr>
        <td width="105" height="35" bgcolor="#EFF6FE">
        <input type="hidden" name="name" value="${user.name }">
        <div align="center">请输入新的密码</div></td>
        <td width="187"><div align="center">
          <input type="password" name="password">
        </div></td>
      </tr>
       <tr>
        <td width="105" height="35" bgcolor="#EFF6FE">
        <div align="center">确认密码</div></td>
        <td width="187"><div align="center">
                 <input type="password" name="passwordOne">
        </div></td>
      </tr>
    </table>
    <br>
    <input type="submit" name="Submit2" value="提交">&nbsp;&nbsp;
    <input type="reset" name="Submit3" value="重置">
    &nbsp;&nbsp;
	<input type="button" name="Submit4" value="返回" onClick="javascript:history.go(-1)">
  </form>
</div>
</body>
</html>
