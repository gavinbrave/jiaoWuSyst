<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 5.0 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>老师管理界面</title>
    
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
    <script src="/JaoWuSyst/assets/js/bootstrap.min.js"></script>
    <script src="/JaoWuSyst/assets/js/bootstrap-paginator.js"></script>
    <script type="text/javascript" src="../JaoWuSyst/assets/laydate/laydate.js"></script>
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
			$.post("/JaoWuSyst/teacher/findByItem.do",$("#f1").serialize()+"&pageNO="+pageNO,function(info){
			var htm="";
			var i=0;
				for(;i<info.list.length;i++){
					var obj = info.list[i];
					var logout="";
					if(${teacherBean.role.roleId} == 1){
						logout=
							"<td><a href='/JaoWuSyst/teacher/findById.do?find=show&id="+obj.id+"'>查看</a>&nbsp;&nbsp;"+
							"<a href='/JaoWuSyst/teacher/findById.do?find=update&id="+obj.id+"'>修改</a>&nbsp;&nbsp;"+
							"<input type='button' class='btn btn-mini btn-danger' onclick='updateState("+obj.id+")' value='注销'></td>";
					}else if(${teacherBean.role.roleId} == 2){
						logout=
							"<td><a href='/JaoWuSyst/teacher/findById.do?find=show&id="+obj.id+"'>查看</a>&nbsp;&nbsp;"+
							"<a href='/JaoWuSyst/teacher/findById.do?find=update&id="+obj.id+"'>修改</a></td>";
					}
					htm+="<tr><td>"+obj.id+"</td><td>"+obj.name+"</td><td>"+obj.subjectBean.subjectName+"</td>"+
						"<td>"+obj.startTime+"</td>"+"<td>"+obj.name+".doc</td>"+
					logout+"</tr>"
				}
				for(var j=0;j<5-i;j++){
					htm+="<tr><td>&nbsp;</td><td></td><td></td><td></td><td></td><td></td><tr>"
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
		function updateState(id){
			$.post("/JaoWuSyst/teacher/updateState.do","id="+id,function(info){
				findByItem(1);
			});
		}
    </script>
</head>
<body>
    <div class="alert alert-info"><b class="tip"></b>教师管理</div>
		<form id="f1">
			<table class="table table-striped table-bordered table-condensed">
		        <thead>
		        <tr>
		            <td colspan="6" class="auto-style2">&nbsp;请填写查询条件 </td>
		        </tr>
		        </thead>
		        <tbody>
		        <tr>
		            <td>姓 名</td>
		            <td class="detail">
		                <input   type="text" name="name"/>
		            </td>
		
		            <td>学科</td>
		            <td>
		                <select name="subjectName">
		                	<option value="">所有学科</option>
		                    <option value="语文">语文</option>
		                    <option value="数学">数学</option>
		                    <option value="英语">英语</option>
		                    <option value="化学">化学</option>
		                </select>
		            </td>
		            
		            <td>工作日期： </td>
		        	<td>
		            	<div class="input-append">
                	<input class="span2" id="date1" size="16" type="text" name="startTime"/><span class="add-on"><i class="icon-calendar"></i></span>至<input class="span2" id="date2" size="16" type="text" name="endTime"/><span class="add-on"><i class="icon-calendar"></i></span>
		            	</div>
		        	</td>
        	
		        </tr>
		
		        <tr>
		            <td colspan="6" align="right">
		                <input class="btn btn-info" id="find" type="button" onclick="findByItem(1)" value="查询" />
		               	<a class="btn btn-info" href="/JaoWuSyst/jsp/addTeacher.jsp">添加教师信息</a>
		        </tr>
		        </tbody>
		    </table>
		</form>
    

<div style="height: 180px">
    <table class="table table-striped table-bordered table-condensed" id="list">
    <thead>
    <tr class="tr_detail">
        <td>教师工号 </td>
        <td>姓名</td>
        <td>学科</td>
        <td>参加工作日期</td>
        <td>档案</td>
        <td colspan="4">操作 </td>
    </tr>
    </thead>
    <tbody id="tbod">
    </tbody>
    </table></div>
<div class="pagination" style="float: left;" id="cutPageDivId">

</div>
<div id="cutPageDiv">
   
</div>
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
