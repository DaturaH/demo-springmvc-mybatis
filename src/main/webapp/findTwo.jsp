<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
  
<html>
<head>
<title>找回密码步骤二</title>
 <link href="../css/css1.css" rel="stylesheet" type="text/css">
 <script src="http://www.w3school.com.cn/jquery/jquery-1.11.1.min.js"></script>
<script>
$(document).ready(function(){
	$('#Submit2').click(function(){
		if(document.all.result.value.length == 0){
			alert("答案不能为空！");
			return false;
		}
		var name = $('#name').val();
		var result = $('#result').val();
	//	alert(name);
	//	alert(result);
		$.ajax({
			type: "POST",
			url: "http://localhost:8080/zmarket/muserController/findThree.do",
			data: "name=" + name + "&result=" + result,
	        dataType:"json",
			success : function(data) {
			   	if(data.note == "error"){
			   		alert("答案不正确,请重新输入！！");
		 		}else if(data.note == "success"){
		 			//window.location.href="findTwo.jsp"; 
		 			//form.submit();
		 		    document.getElementById("myform").submit();    

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
</head>

<body>
<div align="center">
  <p class="blue"><strong>输入答案</strong></p>
  <form name="form" id = "myform" method="post" action="<%=path %>/muserController/findThree1.do" >
	<table>
      <tr>
        <td width="105" height="35" bgcolor="#EFF6FE">
        <div align="center">问题</div></td>
        <td width="187"><div align="center">
          <input type="hidden" id = "name" name="name" value="${user.name }">
          <input type="hidden" name="question" value="${user.question}">${user.question}
        </div></td>
      </tr>
       <tr>
        <td width="105" height="35" bgcolor="#EFF6FE">
        <div align="center">答案</div></td>
        <td width="187"><div align="center">
          <input type="text" id = "result" name="result">
        </div></td>
      </tr>
    </table>
    <br>
    <input type="button" id="Submit2" value="提交">&nbsp;&nbsp;
    <input type="reset" name="Submit3" value="重置">
    &nbsp;&nbsp;
    	<input type="button" name="Submit4" value="返回" onClick="javascript:history.go(-1)">
  </form>
</div>
</body>
</html>
