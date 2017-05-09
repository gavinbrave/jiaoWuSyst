<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 5.0 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>添加教师信息</title>
    
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
    <script type="text/javascript" src="../JaoWuSyst/assets/laydate/laydate.js"></script>
    
    <script type="text/javascript">
        function titileOnblur(){
        	if($("#name").val()==""||$("#").val()==null){
        		alert("请填写正确的姓名格式");
        		return false;
        	}else{
        		return true;
        	}
        }
        function stopSub(){
        	if($("#pwd").val()==""||$("#pwd").val()==null){
        		$("#pwd").val("123456");
        	}
        	if(titileOnblur()==true){
        		return true;
        	}else{
        		return false;
        	}
        }
    </script>
</head>
  
<body>
<div class="alert alert-info"><b class="tip"></b>教师管理<b class="tip"></b>添加教师信息</div>
<form action="/JaoWuSyst/teacher/add.do" method="post"  enctype="multipart/form-data" onsubmit="return stopSub()">
    <table class="table table-striped table-bordered table-condensed" id="mytable">
        <tr>
            <td>姓名：</td>
            <td >
                <input type="text" name="name" id="name" onblur="titileOnblur()"/></td>
        </tr>
        <tr>
            <td>密码：</td>
            <td><input id="pwd" type="text" name="pwd" value='123456' placeholder="123456"/><span>*不填为默认密码</span></td>
        </tr>
        <tr>
        	<td>性别：</td>
            <td>
                <select name="sex">
                    <option value="男">男</option>
                    <option value="女">女</option>
                </select>
            </td>
        <tr>
            <td>年龄：</td>
            <td><input type="text" name="age" /></td>
        </tr>
        <tr>
            <td>教龄：</td>
            <td><input type="text" name="Seniority" /></td>
        </tr>
        <tr>
        	<td>学科</td>
            <td>
                <select name="subjectId">
                    <option value="1">语文</option>
                    <option value="2">数学</option>
                    <option value="3">英语</option>
                    <option value="4">化学</option>
                </select>
            </td>
        </tr>
        <tr>
            <td>邮箱：</td>
            <td><input type="text" name="email" /></td>
        </tr>
        <tr>
        	<td>出生日期： </td>
        	<td>
            <div class="input-append">
              	<input class="span2" id="date1" size="16" type="text" name="birthday"/><span class="add-on"><i class="icon-calendar"></i></span>
            </div>
        	</td>
        </tr>
        <tr>
        	<td>参加工作日期： </td>
        	<td>
            <div class="input-append">
              	<input class="span2" id="date2" size="16" type="text" name="startTime"/><span class="add-on"><i class="icon-calendar"></i></span>
            </div>
        	</td>
        </tr>
        <tr>
        	<td>权限：</td>
            <td>
                <select name="roleId">
                    <option value="1">超级管理员</option>
                    <option value="2">管理员</option>
                    <option value="3">教师</option>
                </select>
            </td>
        <tr>
         <tr>
            <td>档案文件: </td>
            <td ><input type="text" name="archiveFile" style="display:none" value="e:/de/de.doc"/>
                <input type="file" name="archive"/></td>
        </tr> 
        
        <tr>
            <td colspan="4">
                <input class="btn btn-info" type="submit" value="提 交" />
                <input class="btn btn-info"  type="button" value="取 消" onclick="location.href='/JaoWuSyst/jsp//teacherMain.jsp'"/>
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
