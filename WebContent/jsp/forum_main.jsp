<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 5.0 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>论坛</title>
    
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
    <script type="text/javascript" src="/JaoWuSyst/assets/js/zhi.js"></script>
    <script type="text/javascript" src="/JaoWuSyst/assets/laydate/laydate.js"></script>
  	<script type="text/javascript" src="/JaoWuSyst/assets/js/bootstrap-paginator.js"></script>
  <script type="text/javascript">
  		var options = {
            currentPage: 1,       //当前页
            totalPages:20,       //总页数
            numberOfPages:5,     //页面上最多显示的页码数
            alignment:'right',  //对齐方式
            size:'large',        //组件大小
            onPageClicked:function(e,x,type,page){//当页码点击后，调用该函数，其中第四个参数为点中的页码
                //  alert(page);
            findByItem(page);
            }
        }
		$(function(){
		//	findByItem(1);
		});
		function findByItem(pageNO){
			$.post("/JaoWuSyst/announcement/findByItems.do",$("#f1").serialize()+"&pageNO="+pageNO,function(info){
			var htm="";
				var i=0;
				for(;i<info.list.length;i++){
					var obj = info.list[i];
					htm+="<tr><td>"+obj.title+"</td><td>"+obj.createTime+"</td>"+
					"<td><a href='/JaoWuSyst/announcement/findById.do?annId="+obj.id+"'>查 看</a></td><td>"+
					" <input type='button' class='btn btn-mini btn-danger' value='删 除' onclick='del("+obj.id+")'/></td></tr>"
				}
				for(var j=0;j<5-i;j++){
					htm+="<tr><td>&nbsp;</td><td></td><td></td><td></td><tr>"
				}
				$("#tbod").html(htm);
				options.currentPage=pageNO;
  				options.totalPages=info.totalPage;
  				if(info.totalPage<=1){
	  				$("#cutPageDiv").css({"display":"none"});	
	  			}else{
	  				$("#cutPageDiv").css({"display":"block"});
	  			}
  				$("#cutPageDivId").html("<ul><li><a>当前"+pageNO+"/"+info.totalPage+"页  共"+info.count+"条记录</a></li></ul>");
				$("#cutPageDiv").bootstrapPaginator(options);
			},"json");
		}
		function del(id){
			$.post("/JaoWuSyst/announcement/del.do","id="+id,function(info){});
			findByItem(1);
		}
  	</script>
  </head>
  
<body>
<div class="alert alert-info">教师论坛</div>
<form id="f1">
    <table class="table table-striped table-bordered table-condensed">
        
        <tbody>
        <tr>

            <td  style="float:right">
             <input onblur="kk(this)"  type="text" name="name"/>
                <input class="btn" id="find" type="button" value="搜索" onclick="findByItem(1)"/>
                <input class="btn"  type="button" value="发帖" onclick="location.href='/JaoWuSyst/jsp/notice_add.jsp'"/>
        	</td>
        </tr>
        </tbody>
    </table>
</form>

<div style="height: 180px">
<table class="table table-striped table-bordered table-condensed" id="list">
    
    <tbody id="tbod">
    <a><div class="alert  alert-success"><b class="tip"></b>发的帖子一              <span style="float:right">作者   2017/7/7</span></div></a> 
    <a><div class="alert  alert-success"><b class="tip"></b>发的帖子一              <span style="float:right">作者   2017/7/7</span></div></a> 
    <a><div class="alert  alert-success"><b class="tip"></b>发的帖子一              <span style="float:right">作者   2017/7/7</span></div></a> 
    </tbody>
</table>
</div>
<div class="pagination" style="float: left;" id="cutPageDivId">

</div>
<div id="cutPageDiv"></div>
</body>
</html>
