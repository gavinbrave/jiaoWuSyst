<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 5.0 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'business.jsp' starting page</title>
    
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
    <script src="/JaoWuSyst/assets/js/echarts.min.js"></script>
    <script type="text/javascript" src="/JaoWuSyst/assets/laydate/laydate.js"></script>
  </head>
  
<body>
<div class="alert alert-info"><b class="tip"></b>学习评估</div>
<form id="f1">
    <!-- <table class="table table-striped table-bordered table-condensed">
        <thead>
        <tr>
            <td colspan="6" class="auto-style2">&nbsp;请填写查询条件 </td>
        </tr>
        </thead>
        <tbody>
        <tr>
            <td>日期： </td>
            <td>
                <div class="input-append">
                    <input class="span2" id="date1" size="16" type="text" name="startTime"/><span class="add-on"><i class="icon-calendar"></i></span>至<input class="span2 " id="date2" size="16" type="text" name="endTime"/><span class="add-on"><i class="icon-calendar"></i></span>
                </div>
            </td>
        </tr>

        <tr>
            <td colspan="6" align="right">
                <input class="btn btn-info" id="find" type="button" value="查询" onclick="findByItem()"/>
        </tr>
        </tbody>
    </table> -->
</form>

<!-- 为ECharts准备一个具备大小（宽高）的Dom -->
<div class="alert alert-info" id="main" style="width: 826px;height:500px;margin: auto"></div>


<script type="text/javascript">
    // 基于准备好的dom，初始化echarts图表
    var myChart = echarts.init(document.getElementById('main'));
			var option = {
				    title: {
				        text: '教师专业评估雷达图'
				    },
				    legend: {
				        data: ['图一','图二', '张三', '李四']
				    },
				    radar: [
				        {
				            indicator: [
				                { text: '指标一' },
				                { text: '指标二' },
				                { text: '指标三' },
				                { text: '指标四' },
				                { text: '指标五' }
				            ],
				            center: ['25%', '50%'],
				            radius: 120,
				            startAngle: 90,
				            splitNumber: 4,
				            shape: 'circle',
				            name: {
				                formatter:'【{value}】',
				                textStyle: {
				                    color:'#72ACD1'
				                }
				            },
				            splitArea: {
				                areaStyle: {
				                    color: ['rgba(114, 172, 209, 0.2)',
				                    'rgba(114, 172, 209, 0.4)', 'rgba(114, 172, 209, 0.6)',
				                    'rgba(114, 172, 209, 0.8)', 'rgba(114, 172, 209, 1)'],
				                    shadowColor: 'rgba(0, 0, 0, 0.3)',
				                    shadowBlur: 10
				                }
				            },
				            axisLine: {
				                lineStyle: {
				                    color: 'rgba(255, 255, 255, 0.5)'
				                }
				            },
				            splitLine: {
				                lineStyle: {
				                    color: 'rgba(255, 255, 255, 0.5)'
				                }
				            }
				        },
				        {
				            indicator: [
				                { text: '语文', max: 150 },
				                { text: '数学', max: 150 },
				                { text: '英语', max: 150 },
				                { text: '物理', max: 120 },
				                { text: '化学', max: 108 },
				                { text: '生物', max: 72 }
				            ],
				            center: ['75%', '50%'],
				            radius: 120
				        }
				    ],
				    series: [
				        {
				            name: '雷达图',
				            type: 'radar',
				            itemStyle: {
				                emphasis: {
				                    // color: 各异,
				                    lineStyle: {
				                        width: 4
				                    }
				                }
				            },
				            data: [
				                {
				                    value: [100, 8, 0.40, -80, 2000],
				                    name: '图一',
				                    symbol: 'rect',
				                    symbolSize: 5,
				                    lineStyle: {
				                        normal: {
				                            type: 'dashed'
				                        }
				                    }
				                },
				                {
				                    value: [60, 5, 0.30, -100, 1500],
				                    name: '图二',
				                    areaStyle: {
				                        normal: {
				                            color: 'rgba(255, 255, 255, 0.5)'
				                        }
				                    }
				                }
				            ]
				        },
				        {
				            name: '成绩单',
				            type: 'radar',
				            radarIndex: 1,
				            data: [
				                {
				                    value: [120, 118, 130, 100, 99, 70],
				                    name: '张三',
				                    label: {
				                        normal: {
				                            show: true,
				                            formatter:function(params) {
				                                return params.value;
				                            }
				                        }
				                    }
				                },
				                {
				                    value: [90, 113, 140, 30, 70, 60],
				                    name: '李四',
				                    areaStyle: {
				                        normal: {
				                            opacity: 0.9,
				                            color: new echarts.graphic.RadialGradient(0.5, 0.5, 1, [
				                                {
				                                    color: '#B8D3E4',
				                                    offset: 0
				                                },
				                                {
				                                    color: '#72ACD1',
				                                    offset: 1
				                                }
				                            ])
				                        }
				                    }
				                }
				            ]
				        }
				    ]
				};
  
			myChart.setOption(option);
</script>
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
