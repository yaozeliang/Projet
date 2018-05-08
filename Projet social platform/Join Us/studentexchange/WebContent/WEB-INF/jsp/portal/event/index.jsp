<%@ page language="java" contentType="text/html; charset=utf8"  pageEncoding="utf8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<jsp:include page="/portal/common/static.jsp" />
</head>

<body id="nv_plugin" class="pg_dpw_activity" onkeydown="if(event.keyCode==27) return false;">
<jsp:include page="/portal/common/menu.jsp" />

<div id="wp" class="wp">
<style>
.mxi_main{width:730px;}
.mxi_side{}


.mxleft{ float:left;width:120px;height:160px; background:#e5e5e5;}
.mxright{ float:left;}

.mx_listloop {position:relative;margin:10px;padding:8px 0; background:#ffffff url(./source/plugin/dpw_activity/image/back.png) 0 bottom no-repeat;}
.mx_listloop .mx_date {width:110px;height:50px;text-align:center;padding:10px 0 10px 10px;}
.mx_listloop .mx_date dl{width:120px;}
.mx_listloop .mx_date dt{ float:left;width:50px;color:#F60;font-weight:900; font-size:35px; font-family:Georgia;}
.mx_listloop .mx_date dd{float:left;padding-top:10px;}
.mx_listloop .mx_date dd p{color:#333333;}
.mx_listloop .mx_date .operate{}
.mx_listloop h2 {margin:10px;border-bottom:1px  dashed #cccccc;}
.mx_listloop h2 a{font-size:16px;color:#333333;}
.mx_listloop .mx_verify{ position:absolute;right:20px;top:-10px;}
.mx_listloop .mx_verify img{ width:90px;}



.mx_cover{float:left;width:200px;height:160px;margin:0 10px 0 0;}
.mx_cover img{width:200px;height:160px;}
.operate {text-align:center;}
.operate a{ display:block;margin:10px;background:#0099FF;width:100px;line-height:25px;color:#ffffff; cursor:pointer;}
.operate .closed { background:#999;}


.mx_items { float:left;width:300px;color:#999}
.mx_items ul li{ display:inline;margin-right:0.8em; }
.mx_items dt {border-bottom:1px  dashed #cccccc;margin-bottom:5px;}
.mx_items dt a{color:#F60;font-size:14px;}
.mx_items dt,.mx_items dd{line-height:20px;}
.mx_items span{margin-left:20px;}
.mx_items em {  font-weight:900;color:#cc0000;font-size:14px;padding-right:0.3em;}


.applylist{ margin-top:5px;padding:.5em; border-top:1px dashed #cccccc;}
.applylist li { display:inline;}
.applylist li img { width:32px;}


.calendar {font-size:14px; min-height:200px;}
.calendar table{ }
.calendar td { width:30px;height:30px;text-align:center;border-bottom:1px dashed #f5f5f5;}
.calendar .bar { height:30px; text-align:center; width:100%}
.calendar .days td:hover{cursor:hand;cursor:pointer;color:#F96;}
.calendar .days .e{display:block;width:25px;height:25px;color:#F60;background:url(./source/plugin/dpw_activity/image/btn.png) 0 bottom no-repeat;}
.calendar .weekheader{ height:30px;}
.calendar .item{font-size:12px;}
.calendar .today {width:30px;height:30px;color:green;font-weight:bold;font-size:15px;}
.calendar .sunday,.calendar .sunday a {color:red;}	

.tabar {width:700px;margin:10px 0 0 20px;;}
.tabar dt,.tabar dd{ display:inline;margin:5px}
.tabar dt { font-size:16px;color:#0099ff;font-weight:900;}
.tabar .curTaber{ background:#39F;padding:3px 5px;}
.tabar .curTaber a{ color:#ffffff;}
.tabar a:hover{background:#39F;color:#ffffff;}


.acenter { text-align:left; }
.acenter ul{}
.acenter li {display:inline;margin:1em 0.5em ; }
.acenter li  a{ padding:3px 8px;background:#ff6600;width:100px;color:#ffffff;font-size:16px;}
.acenter li  a:hover{color:#cc00000; text-decoration:none;}
.mx_rateline { margin-left:20px }
 .mx_rate, .mx_ratesv, .mx_rate_big { display: inline-block; width: 60px; height: 16px; line-height: 16px; background: url(./source/plugin/dpw_activity/image/rate.png) no-repeat 0 0; cursor:pointer }
.mx_rate span, .mx_ratesv span, .mx_rate_big span { display: inline-block; background: url(./source/plugin/dpw_activity/image/rate.png) no-repeat 0 -16px;  }
.ml .mx_rate span { float: left; }
.activitynone { color:#CCC;margin:20px;}		
.actfm { height: auto !important; height: 220px; max-height: 220px; overflow-x: hidden; overflow-y: auto; }
.actl { table-layout: fixed; width:420px; border-top: 3px solid COMMONBORDER; }
.actl th, .actl td { padding: 8px 2px; border-top: 1px dashed COMMONBORDER; }
.actl th { width: 60px; }
.actfm { height: auto !important; height: 220px; max-height: 220px; overflow-x: hidden; overflow-y: auto; }
.actl_pop { overflow: auto; max-width: 200px; max-height: 300px; }
.ie6 .actl_pop { width: 300px !important; height: expression(this.offsetHeight > 300 ? 300 : 'auto'); }
.actl_pop li { display: block; padding: 3px 0; border-bottom: 1px dashed COMMONBORDER; }
.actl_pop a { display: inline; position: static; padding: 0; border: none; white-space: normal; }
.actl_pop a:hover { background: transparent; text-decoration: underline; }
</style>
<script>
function ijoin(baseid){
	window.location.href="<%=request.getContextPath()%>/myportaleventlog/eventlog.action?eventlog.tbEvent.baseid="+baseid;
}
var msg = "<s:property value="msg"/>";
if(msg!=''){
	alert(msg);
}
</script>
<div id="pt" class="bm cl">
  <div class="z"> <a href="http://www.xuesheng.fr/" class="nvhm" title="首页">法国学生汇</a><em>»</em><a href="./【新提醒】活动报名 - 法国学生汇_files/【新提醒】活动报名 - 法国学生汇.html">活动报名</a><em> › </em>  </div>
</div>
<style id="diy_style" type="text/css"></style>
 <!--[diy=diy11]-->
  <div id="diy11" class="area"></div>
  <!--[/diy]-->

<div class="pgt"></div>
<a id="newspecial" class="vk_newspecial" href="<%=request.getContextPath()%>/myportalevent/portalevent!create.action" title="发新帖"> </a>
</div>
<br/>
<div class="ct2 wp cl" style="width:960px;margin:0 auto">
  <div class="mxi_main z">
  	<!--[diy=diy2]-->
    <div id="diy2" class="area"></div>
    <!--[/diy]-->
    <div id="activity_ad" class="bm"></div>    
     
     
<div class="mx_list"> 
   
   <s:iterator value="events" id="event">
    <div class="mx_listloop cl">
   
    <div class="mxleft">
      <dl class="mx_date">
        <dt><s:date name="#event.holdstartdate" format="dd" /></dt>
        <dd>
          <p><s:date name="#event.holdstartdate" format="yyyy-M月" /></p>
        </dd>
      </dl>
            <div class="cl mx_rateline">
      <p class="mx_rate">
            <span style="width:10%">
                &nbsp;
            </span>
       </p></div>
        
      <div class="operate" id="mxoperate_0"> 
                        <a class="dpwptn dpwb1 brs" onclick="ijoin(<s:property value="#event.baseid"/>)" target="_blank">  我要参加</a>                 
      </div>
    </div>
    <div class="mxright">
    <div class="mx_cover"><a href="<%=request.getContextPath()%>/myportalevent/portalevent!show.action?baseid=<s:property value="#event.baseid"/>" target="_blank"><img src="<%=request.getContextPath()%>/<s:property value="#event.imgpath"/>"></a></div>
    <dl class="mx_items cl">
      <dt><a href="<%=request.getContextPath()%>/myportalevent/portalevent!show?baseid=<s:property value="#event.baseid"/>"><s:property value="#event.name"/></a></dt>
      <dd>发起人 :<s:property value="#event.tbUser.name"/> </a></dd>
      <dd>活动类型: <strong><s:if test="event.activityclass==1">聚餐派对</s:if><s:elseif test="event.activityclass==2">户外活动</s:elseif><s:elseif test="event.activityclass==3">展览沙龙</s:elseif><s:elseif test="event.activityclass==4">开设课程</s:elseif><s:elseif test="event.activityclass==5">旅游线路</s:elseif></strong>  <span>活动地点 : <s:property value="#event.tbUser.address"/></span></dd>
            <dd>报名截止 : <s:date name="#event.enrollenddate" format="yyyy-MM-dd HH:mm" /></dd>
       
            <dd>
      	<ul>
          <li>已参加人数 : <em><s:property value="#event.enrollnum"/></em>人</li>
          <li>名额 : <em><s:property value="#event.num"/></em>人</li>
          <li>余额 : <em>不限 </em>人</li>
        </ul>
      </dd>
      <dd></dd>
      
      <div class="applylist cl">
          <ul>
             <s:iterator value="#event.tbEventlogs" id="eventlog">
                 <li class="brs"><s:property value="#eventlog.tbUser.name"/>,</li>
              </s:iterator>       
            </ul>
                      
        </div>
       
    </dl>
     
  </div>
  </div>
  
  </s:iterator>
   
    
  
</div>
      
    
  </div>
  
</div>

</div>
 </body></html>