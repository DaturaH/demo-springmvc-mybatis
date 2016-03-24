<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
<script src="http://www.w3school.com.cn/jquery/jquery-1.11.1.min.js"></script>
<script>
$(document).ready(function(){
	$('#Submit2').click(function() {
		if(document.all.name.value.length == 0){
			alert("姓名不能为空～");
			return false;
		}
		//alert(name);
		var name = document.all.name.value;
		//alert(name);

		$.ajax({
			type: "POST",
			url: "http://localhost:8080/zmarket/muserController/findTwo.do",
			data: "name=" + name,
	        dataType:"json",
			success : function(data) {
			   	if(data.note == "error"){
			   		alert("不存在此会员名称,请重新输入！");
		 		}else if(data.note == "success"){
		 			window.location.href="findTwo.jsp"; 
	  			}else{
	  				alert("系统错误！");
	  			}				
			}, error: function(XMLHttpRequest, textStatus, errorThrown) {
	            alert(textStatus);
	      }
		});  

	});
});
</script>
<title>找回密码步骤一</title>
</head>

<body>
<div align="center">
  <p class="bgcolor">&nbsp;</p>
  <p class="bgcolor"><strong>输入会员账号</strong></p>
  <form name = "form" method="POST">
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
    <input type="button" id="Submit2" value="提交">
    &nbsp;&nbsp;
    <input type="reset" name="Submit3" value="重置">
    &nbsp;&nbsp;
    <input type="button" name="Submit4" value="关闭" onClick="javascript:window.close();">
  </form>
  <p>&nbsp;  </p>
</div>
</body>
</html>
