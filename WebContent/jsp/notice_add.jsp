<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 5.0 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>发布公告</title>
    
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
    <script type="text/javascript">
        
        function titileOnblur(){
        	if($("#title").val()==""||$("#title").val()==null){
        		alert("公告标题不能为空");
        		return false;
        	}else{
        		return true;
        	}
        }
        function contentOnblur(){
        	if($("#content").val()==""||$("#content").val()==null){
        		alert("公告内容至少为5个字");
        		return false;
        	}else{
        		return true;
        	}
        }
        function stopSub(){
        	if(titileOnblur()==true&&contentOnblur()==true){
        		return true;
        	}else{
        		return false;
        	}
        }
    </script>
</head>
  
<body>
<div class="alert alert-info"><b class="tip"></b>公告管理<b class="tip"></b>发布公告</div>
<form action="/JaoWuSyst/announcement/add.do" method="post"  enctype="multipart/form-data" onsubmit="return stopSub()">
    <table class="table table-striped table-bordered table-condensed" id="mytable">
        
        <tr>
            <td>标题：</td>
            <td colspan="2">
                <input type="text" name="title" id="title" onblur="titileOnblur()"/></td>
        </tr>
        <tr>
            <td>内容：</td>
            <td colspan="2">
                <textarea rows="3" cols="12" name="content" id="content" onblur="contentOnblur()"></textarea></td>
        </tr>
       
        <tr>
            <td colspan="4">
                <input class="btn btn-info" type="submit" value="提 交" />
                <input class="btn btn-info"  type="button" value="取 消" onclick="location.href='/JaoWuSyst/jsp/notice_main.jsp'"/>
            </td>
        </tr>
    </table>
</form>


<div id="maskLayer" style="display:none">
    <iframe id="maskLayer_iframe" frameBorder=0 scrolling=no style="filter:alpha(opacity=50)"></iframe>
    <div id="alphadiv" style="filter:alpha(opacity=50);-moz-opacity:0.5;opacity:0.5"></div>
    <div id="drag">
        <h3 id="drag_h"></h3>
        <div id="drag_con"></div><!-- drag_con end -->
    </div>
</div>
<!-- alpha div end -->
<div id="sublist" style="display:none"></div>
</body>
</html>
