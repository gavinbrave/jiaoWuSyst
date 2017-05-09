<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 5.0 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>查看公告</title>
    
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
        $(function () {
            var _thisbody = $('.list').find('tbody');
            _thisbody.toggle();

            var _this = $('.list').find('thead');
            //折叠
            _this.click(function () {
                var i = $(this).find('i');
                if (i.attr('class') == 'tip-down') { i.attr('class', 'tip-up') } else { i.attr('class', 'tip-down') }
                $(this).parent().find('tbody').toggle();
            })
        })
    </script>
    <script type="text/javascript" src="/JaoWuSyst/assets/js/bootstrap-paginator.js"></script>
  </head>
  
<body>
<div class="alert alert-info">渠道商业务管理<b class="tip"></b>公告管理<b class="tip"></b>公告查看</div>



<div class="alert alert-danger">
	<input type="hidden" value="${ann.id}" id="annId">
    <b><a>公告信息<i class="tip-up-red"></i></a></b>
    <div class="task">
        <p>标题：${ann.title}</p>
        <p><i class="tip-left"></i>内容：${ann.content}</p>
    </div>

</div>
<div id="tbod"></div>
<div style="float: right" id="cutPageDiv"></div>

</body>
</html>
