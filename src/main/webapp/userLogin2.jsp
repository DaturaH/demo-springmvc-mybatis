<%@ page language="java" import = "java.util.*" pageEncoding = "UTF-8" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js"></script>  
<script type="text/javascript" src="http://jquery-json.googlecode.com/files/jquery.json-2.2.min.js"></script>  
<script type="text/javascript" src="<%=request.getContextPath()%>/scripts/user/index.js"></script> 
<script>
$.fn.serializeObject = function() {  
  var o = {};  
  var a = this.serializeArray();  
  $.each(a, function() {  
    if (o[this.name]) {  
      if (!o[this.name].push) {  
        o[this.name] = [ o[this.name] ];  
      }  
      o[this.name].push(this.value || '');  
    } else {  
      o[this.name] = this.value || '';  
    }  
  });  
  return o;  
};  
  
$(document).ready(  
    function() {  
      jQuery.ajax( {  
        type : 'GET',  
        contentType : 'application/json',  
        url : '${pageContext.request.contextPath}/muserController/list.do',  
        dataType : 'json',  
        success : function(data) {  
          if (data && data.success == "true") {  
            $('#info').html("共" + data.total + "条数据。<br/>");  
            $.each(data.data, function(i, item) {  
              $('#info').append(  
                  "编号：" + item.id + "，姓名：" + item.username  
                      + "，年龄：" + item.age);  
            });  
          }  
        },  
        error : function() {  
          alert("error")  
        }  
      });  
      $("#submit").click(function() {  
        var jsonuserinfo = $.toJSON($('#form').serializeObject());  
        alert(jsonuserinfo);  
        jQuery.ajax( {  
          type : 'POST',  
          contentType : 'application/json',  
          url : '${pageContext.request.contextPath}/muserController/add.do',  
          data : jsonuserinfo,  
          dataType : 'json',  
          success : function(data) {  
            alert("新增成功！");  
          },  
          error : function(data) {  
            alert("error")  
          }  
        });  
      });  
    });   
</script>
    
    <title>Spring MVC</title>  
    
</head>  
<body>  
<div id="info"></div>  
<form action = "<%=path %>/muserController/add.do" method="post" id="form">  
编号：<input type="text" name="id"/>  
姓名：<input type="text" name="username"/>  
年龄：<input type="text" name="age"/>  
  
<input type="submit" value="提交" id="submit"/>  
</form>  
</body>  
</html> 