<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 5.0 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>查看教师信息</title>
    
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

    <link rel="stylesheet" type="text/css" href="/JaoWuSyst/jsp/managePlatform/notice/css/css.css" />
    <link rel="stylesheet" type="text/css" href="/JaoWuSyst/jsp/managePlatform/notice/css/alpha.css" />

    <script type="text/javascript" src="/JaoWuSyst/jsp/managePlatform/notice/js/jquery.js"></script>
    <script type="text/javascript" src="/JaoWuSyst/jsp/managePlatform/notice/js/drag.js"></script>
    <script type="text/javascript" src="/JaoWuSyst/jsp/managePlatform/notice/js/industry_arr.js"></script>
    <script type="text/javascript" src="/JaoWuSyst/jsp/managePlatform/notice/js/industry_func.js"></script>
</head>
  
<body>
<div class="alert alert-info"><b class="tip"></b>教师管理<b class="tip"></b>教师信息</div>
<form enctype="multipart/form-data" onsubmit="return stopSub()">
    <table class="table table-striped table-bordered table-condensed" id="mytable">
        <tr>
            <td>姓名：</td>
            <td >
                <input  readonly="true"  type="text" name="name" id="name" onblur="titileOnblur()" value="${teacher.name}"/></td>
        </tr>
        <tr>
            <td>密码：</td>
            <td><input  readonly="true"  id="pwd" type="password" name="pwd" value="${teacher.pwd}"/></td>
        </tr>
        <tr>
        	<td>性别：</td>
            <td>
               <input  readonly="true" type="text"value="${teacher.sex}"/>
            </td>
        <tr>
            <td>年龄：</td>
            <td><input readonly="true"  type="text" name="age" value="${teacher.age}" /></td>
        </tr>
        <tr>
            <td>教龄：</td>
            <td><input  readonly="true" type="text" name="Seniority" value="${teacher.seniority}"/></td>
        </tr>
        <tr>
        	<td>学科</td>
             <td><input readonly="true"  type="text"value="${teacher.subjectBean.subjectId}"/></td>
        </tr>
        <tr>
            <td>邮箱：</td>
            <td><input  readonly="true" type="text" name="email" value="${teacher.email}"/></td>
        </tr>
        <tr>
        	<td>出生日期： </td>
        	<td>
            <div class="input-append">
              	<input  readonly="true" class="span2" id="date1" size="16" type="text" name="birthday" value="${teacher.birthday}"><span class="add-on"><i class="icon-calendar"></i></span>
            </div>
        	</td>
        </tr>
        <tr>
        	<td>参加工作日期： </td>
        	<td>
            <div class="input-append">
              	<input  readonly="true" class="span2" id="date2" size="16" type="text" name="startTime" value="${teacher.startTime}"/><span class="add-on"><i class="icon-calendar"></i></span>
            </div>
        	</td>
        </tr>
        <tr>
        	<td>权限：</td>
            <td><input  readonly="true" type="text"value="${teacher.role.roleId}"/></td>
        <tr>
         <tr>
            <td>档案文件: </td>
            <td ><input  readonly="true" type="text" name="archiveFile" value="${teacher.archiveFile}"/>
                </td>
        </tr> 
        
        <tr>
            <td colspan="4">
                <input class="btn btn-info"  type="button" value="返回" onclick="location.href='/JaoWuSyst/jsp/teacherMain.jsp'"/>
            </td>
        </tr>
    </table>
</form>

<script>
    !function(){
        laydate.skin('molv');//切换皮肤
        laydate({elem: '#date1'});//绑定元素
    }();
    !function(){
        laydate.skin('molv');//切换皮肤
        laydate({elem: '#date2'});//绑定元素
    }();
</script>
</body>
</html>
