<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 5.0 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>主页</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
    <link rel="stylesheet" href="../JaoWuSyst/assets/css/style.css">
    <link rel="stylesheet" href="../JaoWuSyst/assets/css/loader-style.css">
    <link rel="stylesheet" href="../JaoWuSyst/assets/css/bootstrap.css">
    <link rel="shortcut icon" href="../JaoWuSyst/assets/ico/minus.png">
 	<script type="text/javascript" src="../JaoWuSyst/assets/js/jquery.min.js"></script>
 	<script type="text/javascript">
 	$(function(){
 	//得到所有的左边节点ul
 		var objs= $("#uu ul");
	    //隐藏所有的节点
        objs.css({'display':'none'});
 		var zhi=$("#quanXian").val();
		for(var i=0;i<objs.length;i++){
			var obj=$(objs[i]);
			if(zhi==obj.attr("aa")){
				obj.css({'display':'block'});
				$("#myFrameId").attr("src",obj.attr("bb"));
				break;
			}
		}
		//xiao();
 	});
 	//得到所有的小节点
 	/*function xiao(){ 
 		if("是"==$("#seeAnnouncement1").val()){
 			$("#seeAnnouncement").css({"display":'block'});
 		}
 		if("是"==$("#seeAgreement1").val()){
 			$("#seeAgreement").css({"display":'block'});
 		}
 		if("是"==$("#carManage1").val()){
 			$("#carManage").css({"display":'block'});
 		}
 	} */
 	</script>
  </head>
  
<body>
<!-- 隐藏用户自定义背景 -->
<input type="hidden" id="jobNumBgImg" value="bg.jpg">


<!-- 用于权限的隐藏的 -->
<input type="hidden" value="${teacherBean.role.roleId}" id="quanXian">
<div id="preloader">
    <div id="status">&nbsp;</div>
</div>
<!--顶部div-->
<nav role="navigation" class="navbar navbar-static-top">
    <div class="container-fluid">
        <div id="bs-example-navbar-collapse-1" class="collapse navbar-collapse">
            <!--顶部左边-->
            <div id="nt-title-container" class="navbar-left running-text visible-lg">
                <ul class="date-top">
                    <li>教师专业成长管理系统</li>
                </ul>
                <ul id="digital-clock" class="digital">
                        <li class="entypo-clock" style="margin-right:5px"></li>
                        <li class="hour"></li>
                        <li>:</li>
                        <li class="min"></li>
                        <li>:</li>
                        <li class="sec"></li>
                        <li class="meridiem"></li>
                </ul>
            </div>

            <!--右边用户登录显示及背景更换按钮-->
            <ul style="margin-right:0;" class="nav navbar-nav navbar-right">
                <!--修改密码及退出登录-->
                <li>
                    <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                        欢迎，${teacherBean.name}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b class="caret"></b>
                    </a>
                    <ul style="margin-top:14px;" role="menu" class="dropdown-setting dropdown-menu">
                        <li>
                            <a href="changePwd.jsp" target="myframe">
                                <span class="entypo-user"></span>&#160;&#160;修改密码</a>
                        </li>
                        <li>
                            <a href="login.jsp">
                                <span class="entypo-vcard"></span>&#160;&#160;退出登录</a>
                        </li>
                    </ul>
                </li>
            </ul>

        </div>
    </div>
</nav>
<!--左div-->
<div id="skin-select">
    <!--名字logo-->
    <div id="logo">
       
    </div>
    <!--左边菜单收入按钮-->
    <a id="toggle">
        <span class="entypo-menu"></span>
    </a>
    <!--左边菜单-->
    <div class="skin-part">
        <div id="tree-wrap">
            <div id="uu" class="side-bar">
                <ul aa="1" bb="../JaoWuSyst/jsp/notice_main.jsp" id="u1" class="topnav menu-left-nest">
                    <li >
                        <a href="#" style="border-left:0px solid!important;" class="title-menu-left">
                            <span>超级管理员</span>
                            <i data-toggle="tooltip" class="entypo-cog pull-right config-wrap"></i>
                        </a>
                    </li>
                    <li id="seeAnnouncement">
                        <a class="tooltip-tip ajax-load" href="../JaoWuSyst/jsp/notice_main.jsp" target="myframe" title="公告信息">
                            <i class="icon-calendar"></i>
                            <span>公告信息</span>
                        </a>
                    </li>
                    <li >
                        <a class="tooltip-tip ajax-load" href="../JaoWuSyst/jsp/teacherMain.jsp"  target="myframe" title="教师管理">
                            <i class="icon-user-group"></i>
                            <span>教师管理</span>
                        </a>
                    </li>
                    <li>
                        <a class="tooltip-tip ajax-load" href="../JaoWuSyst/jsp/business.jsp"  target="myframe" title="在线学习">
                            <i class="icon-document-edit"></i>
                            <span>在线学习</span>
                        </a>
                    </li>
                    <li id="carManage">
                        <a class="tooltip-tip ajax-load" href="../JaoWuSyst/jsp/forum_main.jsp"  target="myframe" title="教师论坛">
                            <i class="icon-document"></i>
                            <span>教师论坛</span>
                        </a>
                    </li>
                    <li id="seeAgreement">
                        <a class="tooltip-tip ajax-load" href="../JaoWuSyst/jsp/servicePlatform/contract/contract_new.jsp"  target="myframe" title="查看合同">
                            <i class="icon-media-stop"></i>
                            <span>系统管理</span>
                        </a>
                    </li>
                </ul>	  
                <ul aa="2" bb="../JaoWuSyst/jsp/managePlatform/deposit/deposit_main.jsp" class="topnav menu-left-nest">
                    <li>
                        <a href="#" style="border-left:0px solid!important;" class="title-menu-left ">
                            <span>管理员</span>
                            <i data-toggle="tooltip" class="entypo-cog pull-right config-wrap"></i>
                        </a>
                    </li>
                    <li>
                        <a class="tooltip-tip ajax-load" href="../JaoWuSyst/jsp/notice_main.jsp"  target="myframe" title="公告信息">
                            <i class="icon-calendar"></i>
                            <span>公告信息</span>
                        </a>
                    </li>
                    <li>
                        <a class="tooltip-tip ajax-load" href="../JaoWuSyst/jsp/teacherMain.jsp"  target="myframe" title="教师管理">
                            <i class="icon-user-group"></i>
                            <span>教师管理</span>
                        </a>
                    </li>
                    <li>
                        <a class="tooltip-tip ajax-load" href="../JaoWuSyst/jsp/business.jsp"  target="myframe" title="公告查询">
                            <i class="icon-document-edit"></i>
                            <span>在线学习</span>
                        </a>
                    </li>
                    <li>
                        <a class="tooltip-tip ajax-load" href="#" title="教师论坛">
                            <i class="icon-document"></i>
                            <span>教师论坛</span>
                        </a>
                        <ul>
                            <li>
                                <a class="tooltip-tip ajax-load" href="../JaoWuSyst/jsp/managePlatform/operation/business.jsp"  target="myframe" title="Social">
                                    <i class="icon-feed"></i>
                                    <span>已排课</span>
                                </a>
                            </li>
                            <li>
                                <a class="tooltip-tip ajax-load" href="../JaoWuSyst/jsp/managePlatform/operation/block.jsp"  target="myframe" title="Social">
                                    <i class="icon-feed"></i>
                                    <span>课程安排</span>
                                </a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a class="tooltip-tip ajax-load" href="../JaoWuSyst/jsp/managePlatform/block_business/block_main.jsp"  target="myframe" title="业务卡管理">
                            <i class="icon-media-stop"></i>
                            <span>系统管理</span>
                        </a>
                    </li>
                    
                </ul>
                <ul aa="3" bb="../JaoWuSyst/jsp/dataManage/channelsData_notice.jsp" class="topnav menu-left-nest">
                    <li>
                        <a href="#" style="border-left:0px solid!important;" class="title-menu-left">
                            <span>教师界面</span>
                            <i data-toggle="tooltip" class="entypo-cog pull-right config-wrap"></i>
                        </a>
                    </li>
                    <li>
                        <a class="tooltip-tip ajax-load" href="../JaoWuSyst/jsp/notice_main.jsp" target="myframe" title="公告信息">
                            <i class="icon-calendar"></i>
                            <span>公告信息</span>
                        </a>
                    </li>
                    <li>
                        <a class="tooltip-tip ajax-load" href="../JaoWuSyst/jsp/showTeacher.jsp" target="myframe" title="教师信息">
                            <i class="icon-preview"></i>
                            <span>教师个人信息</span>
                        </a>
                    </li>
                    <li>
                        <a class="tooltip-tip ajax-load" href="../JaoWuSyst/jsp/business.jsp" target="myframe" title="新增渠道商">
                            <i class="icon-document-edit"></i>
                            <span>在线学习</span>
                        </a>
                    </li>
                    <li id="carManage">
                        <a class="tooltip-tip ajax-load" href="../JaoWuSyst/jsp/servicePlatform/block/block_new.jsp"  target="myframe" title="卡业务查询">
                            <i class="icon-document"></i>
                            <span>课程表</span>
                        </a>
                    </li>
                    <li id="seeAgreement">
                        <a class="tooltip-tip ajax-load" href="../JaoWuSyst/jsp/servicePlatform/contract/contract_new.jsp"  target="myframe" title="查看合同">
                            <i class="icon-media-stop"></i>
                            <span>系统管理</span>
                        </a>
                    </li>
                </ul>
                <ul aa="系统管理" bb="../JaoWuSyst/jsp/systemManage/jobNum.jsp" class="topnav menu-left-nest">
                    <li>
                        <a href="#" style="border-left:0px solid!important;" class="title-menu-left">
                            <span>系统管理</span>
                            <i data-toggle="tooltip" class="entypo-cog pull-right config-wrap"></i>
                        </a>
                    </li>
                    <li>
                        <a class="tooltip-tip ajax-load" href="../JaoWuSyst/jsp/systemManage/jobNum.jsp" target="myframe" title="工号管理">
                            <i class="icon-user"></i>
                            <span>权限管理</span>
                        </a>
                    </li>
                    <li>
                        <a class="tooltip-tip ajax-load" href="../JaoWuSyst/jsp/systemManage/log.jsp" target="myframe" title="日志查询">
                            <i class="icon-monitor"></i>
                            <span>日志查询</span>
                        </a>
                    </li>
                    <li>
                        <a class="tooltip-tip ajax-load" href="../JaoWuSyst/jsp/systemManage/param.jsp" target="myframe" title="系统参数配置">
                            <i class="icon-gear"></i>
                            <span>系统参数配置</span>
                        </a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</div>
<!--右下div-->
<div class="wrap-fluid">
    <div class="container-fluid paper-wrap bevel tlbr" style="height: 100%">

        <ul id="breadcrumb">
        </ul>
        <!--内部网页-->
        <iframe src="" style="border: none;width: 100%;height: 600px" name="myframe" id="myFrameId">

        </iframe>
    </div>
</div>


<script type="text/javascript" src="../JaoWuSyst/assets/js/jquery.js"></script>
<script type="text/javascript" src="../JaoWuSyst/assets/js/preloader.js"></script>
<script type="text/javascript" src="../JaoWuSyst/assets/js/bootstrap.js"></script>
<script type="text/javascript" src="../JaoWuSyst/assets/js/app.js"></script>
<script type="text/javascript" src="../JaoWuSyst/assets/js/load.js"></script>
<script type="text/javascript" src="../JaoWuSyst/assets/js/main.js"></script>





<div style="text-align:center;">
  
</div>
</body>
</html>
