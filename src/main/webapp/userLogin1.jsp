<%@ page language="java" import = "java.util.*" pageEncoding = "UTF-8" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>

<html>
<head>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script>
$(document).ready(function(){
  $("button").click(function(){
    $("#div1").load("${pageContext.request.contextPath}/muserController/userLogin.do",function(responseTxt,statusTxt,xhr){
      if(statusTxt=="success")
        alert("外部内容加载成功！");
      if(statusTxt=="error")
        alert("Error: "+xhr.status+": "+xhr.statusText);
    });
  });
});
</script>
</head>
<body>

<div id="div1"><h2>使用 jQuery AJAX 来改变文本</h2></div>
<button>获得外部内容</button>
<a href="http://www.w3school.com.cn/example/jquery/demo_test.txt">hj</a>
</body>
</html>

