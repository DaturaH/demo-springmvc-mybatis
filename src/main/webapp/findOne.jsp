<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>找回密码步骤一</title>
</head>
<script type="text/javascript">
function checkEmpty(form){
for(i=0;i<form.length;i++){
if(form.elements[i].value==""){
alert("表单信息不能为空");
return false;
}
}

}
</script>
<body>
<div align="center">
  <p class="bgcolor">&nbsp;</p>
  <p class="bgcolor"><strong>输入会员账号</strong></p>
  <form name = "form" action="<%=path %>/muserController/findTwo.do" method="POST" onSubmit="return checkEmpty(this)">
  	<table>
      <tr>
        <td width="105" height="35" bgcolor="#EFF6FE">
        <div align="center">会员账号</div></td>
        <td width="187"><div align="center">
          <input type="text" name="name">
        </div></td>
      </tr>

    </table>
    <br>
    <input type="submit" name="Submit2" value="提交">
    &nbsp;&nbsp;
    <input type="reset" name="Submit3" value="重置">
    &nbsp;&nbsp;
    <input type="button" name="Submit4" value="关闭" onClick="javascript:window.close();">
  </form>
  <p>&nbsp;  </p>
</div>
</body>
</html>
