<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>


<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>找回密码步骤四</title>
<script type="javascript">
function closeit(){
setTimeout("self.close()",3000);
}
</script>
</head>
<body onLoad="closeit();">
<p>&nbsp;</p>
<div align="center" class="blue">
  <p><strong>
    密码修改成功！！！

  </strong></p>
<meta http-equiv="refresh" content="2;URL=../userLogin.jsp">

</div>
</body>
</html>
