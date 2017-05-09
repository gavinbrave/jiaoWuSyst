<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 5.0 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>修改密码</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
    <link rel="stylesheet" type="text/css" href="/JaoWuSyst/assets/css/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="/JaoWuSyst/assets/css/admin-all.css" />
 	<script type="text/javascript" src="/JaoWuSyst/assets/js/jquery-1.7.2.js"></script>
 	<script type="text/javascript">
 		//两次密码必须一样
 		function xiang(){
 		var zhi1=$("#pwd1").val();
 		var zhi2=$("#pwd2").val();
 			if(zhi1==zhi2&&zhi1!=""){
 				$("#success").attr({"disabled":false});
 				$("#mimaError").html("");
 			}else{
 				$("#mimaError").html("对不起两次密码不相等...");
 			}
 		}
 		function tijiao(){
 			
 		}
 	</script> 
  </head>
  
<body>
<!-- 隐藏的原密码，原密码在session里面有 -->
<input type="hidden" id="oldPwd" value="${teacherBean.pwd }">
<div class="alert alert-info"><b class="tip"></b>修改密码</div>
<form id="f1" action="/JaoWuSyst/teacher/updatePwd.do" method="post">
<table class="table table-striped table-bordered table-condensed">
    <tr>
        <td width="200">原密码：</td>
        <td width="200">
            <input name="oldPwd" type="text" /></td>
        <td><span style="color: red">${error1}</span></td>    
    </tr>
    <tr>
        <td>新密码：</td>
        <td>
            <input id="pwd1" name="pwd" type="text"  onblur="xiang()"/></td>
         <td><span style="color: red" id="mimaError"></span></td>   
    </tr>
    <tr>
        <td>确认密码： </td>
        <td>
            <input type="text" id="pwd2" onblur="xiang()"/></td>
    </tr>

    <tr>
        <td colspan="2">
            <input disabled="disabled" class="btn btn-info" id="success" type="submit" value="确定" />
            <input class="btn btn-info"  type="reset" value="重置" />
    </tr>
</table>
</form>
</body>
</html>
