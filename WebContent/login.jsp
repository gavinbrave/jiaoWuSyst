<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 5.0 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>教师专业成长管理系统</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	
    <!-- Le styles -->
    <script type="text/javascript" src="../JaoWuSyst/assets/js/jquery.min.js"></script>

    <link rel="stylesheet" href="../JaoWuSyst/assets/css/loader-style.css">
    <link rel="stylesheet" href="../JaoWuSyst/assets/css/bootstrap.css">
    <link rel="stylesheet" href="../JaoWuSyst/assets/css/signin.css">

    <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
        <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->
    <!-- Fav and touch icons -->
    <link rel="shortcut icon" href="../JaoWuSyst/assets/ico/minus.png">
  	<script type="text/javascript">
  		if(window!=top)top.location.href=location.href;
  	</script>
  </head>
  
<body> 
    <!-- Preloader -->
    <div id="preloader">
        <div id="status">&nbsp;</div>
    </div>
     <div style="background-color: rgba(48, 65, 96, 0.8);height: 100px">
        
     </div>
     	
    <div class="container">
        <div class="" id="login-wrapper">
            <div class="row">
                <div class="col-md-4 col-md-offset-4">
                    <div id="logo-login">
                        <h1>教师专业成长管理系统</h1>
                        <span></span>
                    </div>
                </div>

            </div>

            <div class="row">
                <div class="col-md-4 col-md-offset-4">
                    <div class="account-box">
                    <span style="color: red">${error}</span> 
                        <form method="post" action="/JaoWuSyst/us/login.do" role="form"> 
                            <div class="form-group"> 
                                <!--a href=&quot;#&quot; class=&quot;pull-right label-forgot&quot;&gt;Forgot email?&lt;/a--> 
                                <label for="inputUsernameEmail">用户名</label> 
                                <input type="text" name="name" id="inputUsernameEmail" class="form-control"> 
                            </div> 
                            <div class="form-group"> 
                                <!--a href=&quot;#&quot; class=&quot;pull-right label-forgot&quot;&gt;Forgot password?&lt;/a--> 
                                <label for="inputPassword">密码</label> 
                                <input type="password" name="pwd" id="inputPassword" class="form-control"> 
                            </div> 
                            <div class="checkbox pull-left"> 
                                <label> 
                                    <input type="checkbox">记住用户名</label> 
                            </div> 
                            <button class="btn btn btn-primary pull-right" type="submit"> 
                                登 录 
                            </button> 
                        </form>
                        
                        <div class="row-block">
	                        <div class="row">
		                    </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

 		<p>&nbsp;</p>
        <div style="text-align:center;margin:0 auto;">
            <h6 style="color:#fff;"><br />
				</h6>
        </div>

    </div>
    <div id="test1" class="gmap3"></div>



    <!--  END OF PAPER WRAP -->




    <!-- MAIN EFFECT -->
    <script type="text/javascript" src="../JaoWuSyst/assets/js/preloader.js"></script>
    <script type="text/javascript" src="../JaoWuSyst/assets/js/bootstrap.js"></script>
    <script type="text/javascript" src="../JaoWuSyst/assets/js/load.js"></script>
    <script type="text/javascript" src="../JaoWuSyst/assets/js/main.js"></script>

</body>
</html>
