<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 5.0 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>公告信息</title>
    
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
			findByItem(1);
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
<div class="alert alert-info"><b class="tip"></b>公告管理</div>
<form id="f1">
    <table class="table table-striped table-bordered table-condensed">
        <thead>
        <tr>
            <td colspan="6" class="auto-style2">&nbsp;请填写查询条件 </td>
        </tr>
        </thead>
        <tbody>
        <tr>
            <td>公告标题： </td>
            <td class="detail">
                <input onblur="kk(this)"  type="text" name="name"/>
            </td>
            <td>日期： </td>
            <td>
                <div class="input-append">
                    <input class="span2" id="date1" size="16" type="text" name="startTime"/>
                    <span class="add-on"><i class="icon-calendar"></i></span>至
                    <input class="span2" id="date2" size="16" type="text" name="endTime"/><span class="add-on"><i class="icon-calendar"></i></span>
                </div>
            </td>
        </tr>

        <tr>
            <td colspan="6" align="right">
                <input class="btn btn-info" id="find" type="button" value="查询" onclick="findByItem(1)"/>
                <input class="btn btn-info"  type="button" value="发布公告" onclick="location.href='/JaoWuSyst/jsp/notice_add.jsp'"/>
        </tr>
        </tbody>
    </table>
</form>

<div style="height: 180px">
<table class="table table-striped table-bordered table-condensed" id="list">
    <thead>
    <tr class="tr_detail">
        <td>公告标题</td>
        <td>发布时间</td>
        <td colspan="2">操作</td>
    </tr>
    </thead>
    <tbody id="tbod">
    </tbody>
</table>
</div>
<div class="pagination" style="float: left;" id="cutPageDivId">

</div>
<div id="cutPageDiv"></div>

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
