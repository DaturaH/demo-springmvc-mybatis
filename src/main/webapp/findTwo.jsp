<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
  
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>找回密码步骤二</title>
</head>
 <link href="../css/css1.css" rel="stylesheet" type="text/css">
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
  <p class="blue"><strong>输入答案</strong></p>
  <form name="form" method="post" action="<%=path %>/muserController/findThree.do" onSubmit="return checkEmpty(form)">
	<table>
      <tr>
        <td width="105" height="35" bgcolor="#EFF6FE">
        <div align="center">问题</div></td>
        <td width="187"><div align="center">
          <input type="hidden" name="name" value="${user.name }">
          <input type="hidden" name="question" value="${user.question}">${user.question}
        </div></td>
      </tr>
       <tr>
        <td width="105" height="35" bgcolor="#EFF6FE">
        <div align="center">答案</div></td>
        <td width="187"><div align="center">
          <input type="text" name="result">
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
