<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>		
<%
  String basePath = request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>

<jsp:include  page="/cms/common.jsp"/>

<script type="text/javascript">
var bool =false;
 function initPage()
  {
	var opt = {callback: pageselectCallback};
	opt['items_per_page']=<s:property value="pager.everyPage"/>;
    opt['current_page']=<s:property value="pager.currentPage"/>;
    opt['num_display_entries']=5;
    opt['num_edge_entries']=1;
    opt['prev_text']='上一页';
    opt['next_text']='下一页';
    var htmlspecialchars ={ "&":"&amp;", "<":"&lt;", ">":"&gt;", '"':"&quot;"}
    $.each(htmlspecialchars, function(k,v){
        opt.prev_text = opt.prev_text.replace(k,v);
        opt.next_text = opt.next_text.replace(k,v);
    })
    return opt;
  }

 $(document).ready(function()
  {
      var opt = initPage();
      $("#Pagination").pagination(<s:property value="pager.totalCount"/>, opt);
  });

 function pageselectCallback(page_index, jq){
   if(bool)
	 {
	     window.location.href='<%=basePath%>/mycmsevent/cmsevent.action?pager.everyPage=<s:property value="pager.everyPage"/>&pager.currentPage='+page_index;
	 }
	 bool =true;//设置临时变量 否则会进入死循环中
	 return false;
	}
	
	function add()
	{
	   window.location.href="<%=basePath%>/mycmsevent/cmsevent!manager.action?op=add";
	}
	 
	function edit(baseid)
	{
	   window.location.href="<%=basePath%>/mycmsevent/cmsevent!manager.action?op=edit&baseid="+baseid;
	}
	
	function btDel(baseid)
	{
	  if(confirm("确定要删除该帐号吗?"))
	  {
		 window.location.href='<%=basePath%>/mycmsevent/cmsevent!commit.action?op=delete&baseid='+baseid;
	  }
	}
</script>

</head>
<body>
    <input name="msg" value="<s:property value='msg'/>" id="msg" type="hidden"/>
	<div class="place">
		<span>位置：</span>
		<ul class="placeul">
			<li><a href="#">首页</a></li>
			<li><a href="#">活动信息管理</a></li>
			<li><a href="#">活动信息</a></li>
		</ul>
	</div>

	<div class="rightinfo">
		<div class="tools">
			<ul class="toolbar">
				<li onclick="add()"><span><img src="<%=basePath%>/cms/images/t01.png"/></span>添加</li>
				<!--  
				<li class="click"><span><img src="<%=basePath%>/cms/images/t02.png" /></span>修改</li>
				<li><span><img src="<%=basePath%>/images/t03.png" /></span>删除</li>
				<li><span><img src="<%=basePath%>/images/t04.png" /></span>统计</li>
				-->
			</ul>
		</div>
		<table class="tablelist">
			<thead>
				<tr>
					<th>序号<i class="sort"><img src="<%=basePath%>/cms/images/px.gif" /></i></th>
					<th>活动名称</th>
					<th>活动类型</th>
					<th>活动开始时间</th>
					<th>活动结束时间</th>
					<th>活动结束时间</th>
					<th>地点</th>
					<th>人数</th>
					<th>费用</th>
					<th>内容</th>
					<th>操作</th>
				</tr>
			</thead>
			<tbody>
			<s:if test="events.size()!=0">
			<s:iterator id="event" value="events" status="rowNum">
				<tr>
					<td><s:property value="#rowNum.index + 1"/></td>
					<td><s:property value="#event.name"/></td>
					<td><s:if test="#event.activityclass==1">聚餐派对</s:if><s:elseif test="#event.activityclass==2">户外活动</s:elseif><s:elseif test="#event.activityclass==3">展览沙龙</s:elseif><s:elseif test="#event.activityclass==4">开设课程</s:elseif><s:elseif test="#event.activityclass==5">旅游线路</s:elseif></td>
					<td><s:date name="#event.holdstartdate" format="yyyy-MM-dd HH:mm" /></td>
					<td><s:date name="#event.holdenddate" format="yyyy-MM-dd HH:mm" /></td>
					<td><s:date name="#event.enrollenddate" format="yyyy-MM-dd HH:mm" /></td>
					<td><s:property value="#event.address"/></td>
					<td><s:property value="#event.num"/></td>
					<td><s:property value="#event.fee"/></td>
					<td><s:property value="#event.remark" escape="false"/></td>
					<td>
		               <a href="javascript:void(0)" class="tablelink" onclick="btDel('<s:property value="#event.baseid"/>')">删除</a>
					</td>
				</tr>
			</s:iterator>
			</s:if>	
			</tbody>
		</table>
        <s:if test="events.size()==0">
			<div class="trclear">
				<b>没有可显示的记录!</b>
			</div>
		</s:if>
		<div class="pagin">
		    <div id="Pagination" class="pagination"></div>
		    <div class="message">共&nbsp;<i class="blue"><s:property value="pager.totalCount"/>&nbsp;</i>条记录，当前显示第&nbsp;<i class="blue"><s:property value="pager.currentPage + 1"/>&nbsp;</i>页</div>
		</div>
	</div>
	<script type="text/javascript">
		$('.tablelist tbody tr:odd').addClass('odd');
	</script>
</body>
</html>
