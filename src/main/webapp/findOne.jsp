<%@ page contentType="text/html; charset=gb2312" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>�һ����벽��һ</title>
</head>
 <link href="../css/css1.css" rel="stylesheet" type="text/css">
<script type="text/javascript">
function checkEmpty(form){
for(i=0;i<form.length;i++){
if(form.elements[i].value==""){
alert("������Ϣ����Ϊ��");
return false;
}
}

}
</script>
<body>
<div align="center">
  <p class="bgcolor">&nbsp;</p>
  <p class="bgcolor"><strong>�����Ա�˺�</strong></p>
  <form name="form" method="post" action="findTwo.jsp" onSubmit="return checkEmpty(this)">
	<table>
      <tr>
        <td width="105" height="35" bgcolor="#EFF6FE">
        <div align="center">��Ա�˺�</div></td>
        <td width="187"><div align="center">
          <input type="text" name="name">
        </div></td>
      </tr>

    </table>
    <br>
    <input type="submit" name="Submit2" value="�ύ">
    &nbsp;&nbsp;
    <input type="reset" name="Submit3" value="����">
    &nbsp;&nbsp;
    <input type="button" name="Submit4" value="�ر�" onClick="javascript:window.close();">
  </form>
  <p>&nbsp;  </p>
</div>
</body>
</html>