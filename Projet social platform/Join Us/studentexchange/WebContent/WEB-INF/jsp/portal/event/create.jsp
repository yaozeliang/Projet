<%@ page language="java" contentType="text/html; charset=utf8"
	pageEncoding="utf8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<jsp:include page="/portal/common/static.jsp" />
<script type="text/javascript">
		function btnActivityTime(thisChk){
			if(thisChk.checked) {
				document.getElementById("uncertainstarttime").style.display="inline-block";
			} else {
				document.getElementById("uncertainstarttime").style.display = "none";
			}
		}
		
		var msg = "<s:property value="msg"/>";
		if(msg!=''){
			alert(msg);
		}
		
		var url;
		var editor = new UE.ui.Editor({ autoHeightEnabled:false});
		editor.render("remark");
		
</script>


</head>

<body id="nv_forum" class="pg_post"
	onkeydown="if(event.keyCode==27) return false;">
	<jsp:include page="/portal/common/menu.jsp" />


	<div id="wp" class="wp">
		

		



		<div id="pt" class="bm cl">
			<div class="z">
				发起活动
			</div>
		</div>
		<form method="post"  id="postform" enctype="multipart/form-data" action="<%=request.getContextPath()%>/myportalevent/portalevent!commit.action" onsubmit="return validate(this)">
			<div id="ct" class="ct2_a ct2_a_r wp cl">
								<div class="bm bw0 cl">
									<div id="postbox">
										<div class="pbt cl">
											<div class="ftid">
											    <s:select name="myevent.type" id="type" list="#{'':'请选择活动类型','1':'约玩','2':'约局','3':'大型活动','4':'活动信息','5':'打折活动'}"></s:select>
											  	
											</div>
											<div class="z">
												<span>
												 <s:textfield name="myevent.name" id="name"></s:textfield>
												 还可输入 <strong id="checklen">80</strong>
													个字符
												</span>
												<script type="text/javascript">strLenCalc($('name'), 'checklen', 80)</script>
											</div>
										</div>

										
										

										<div class="exfm cl">
											<div class="sinf sppoll z">
												<dl>
													<dt>
														<span class="rq">*</span>活动时间:
													</dt>
													<dd>
														<div id="certainstarttime">
															<s:textfield  readonly="true" name="holdstartdate" id="holdstartdate" cssClass="Wdate btn_new dfinput"  onfocus="WdatePicker({isShowClear:false,readOnly:true,dateFmt:'yyyy-MM-dd HH:mm',lang:'en'})">
							<s:param name="value"><s:date name="myevent.holdstartdate" format="yyyy-MM-dd HH:mm" /></s:param>
					</s:textfield>
					
					<span id="uncertainstarttime" style="display: none;" >
																	~ <s:textfield  readonly="true" name="holdenddate" id="calldate" cssClass="Wdate btn_new dfinput"  onfocus="WdatePicker({isShowClear:false,readOnly:true,dateFmt:'yyyy-MM-dd HH:mm',lang:'en'})">
							<s:param name="value"><s:date name="myevent.holdenddate" format="yyyy-MM-dd HH:mm" /></s:param>
					</s:textfield></span>
														</div>
														
														<div class="spmf cl">
															<label for="activitytime"><input type="checkbox"
																id="activitytime" name="activitytime" class="pc"
																onclick="btnActivityTime(this);"
																value="1" tabindex="1">时间范围</label>
														</div>
													</dd>
													<dt>
														<span class="rq">*</span><label for="activityplace">活动地点:</label>
													</dt>
													<dd>
													
													    <s:textfield name="myevent.address" id="address"></s:textfield>
													</dd>
													
													<dt>
														<span class="rq">*</span><label for="activityclass">活动类别:</label>
													</dt>
													<dd class="hasd cl">
														<ul id="activitytypelist" style="display: none">
															
														</ul>
														<span>
														   <s:select name="myevent.activityclass" id="activityclass" list="#{'':'请选择活动类别','1':'聚餐派对','2':'户外活动','3':'展览沙龙','4':'开设课程','5':'旅游线路'}"></s:select>
														
														  
															</span>
														
													</dd>
													<dt>
														<label for="activitynumber">需要人数:</label>
													</dt>
													<dd>
														<s:textfield name="myevent.num" id="num"></s:textfield> 
													</dd>
													
												</dl>
											</div>
											<div class="sadd z">
												<dl>
													<dt>
														<label for="cost">每人花销:</label>
													</dt>
													<dd>
														<s:textfield name="myevent.fee" id="fee"></s:textfield> 元 <span id="costmessage"></span>
													</dd>
													<dt>
														<label for="activityexpiration">报名截止:</label>
													</dt>
													<dd class="hasd cl">
														<span> 
														<s:textfield  readonly="true" name="enrollenddate" id="enrollenddate" cssClass="Wdate btn_new dfinput"  onfocus="WdatePicker({isShowClear:false,readOnly:true,dateFmt:'yyyy-MM-dd HH:mm',lang:'en'})">
							<s:param name="value"><s:date name="myevent.enrollenddate" format="yyyy-MM-dd HH:mm" /></s:param>
					</s:textfield></span>
													</dd>
													<dt>活动图片:</dt>
													<dd class="pns">
														<p>
															<input type="file" name="imgpath"/>
														</p>
														<span class="xg1">
																	添加一张好看的图片，让活动更吸引人 </span>
																<div id="activityattach_image"></div>
													</dd>

												</dl>
											</div>
										</div>

										<div class="exfm">
											<div class="sinf sppoll z" style="width:100%">
												<dl>
													<dt>
														<label for="activitynumber">描述</label>：
													</dt>
													<dd style="width:800px;">
													   <script id="remark" name="myevent.remark"  type="text/plain" style="width:800px;height:200px;"></script>
													</dd>
												</dl>	
											</div>		
										</div>
                                    
<div class="mtm mbm pnpost">
<button type="submit" id="postsubmit" class="pn pnc" value="true" name="topicsubmit">
<span>发起活动</span>
</button>
</div>


									</div>
								</div>
			</div>
		</form>








	</div>

	

	</div>







	</div>








</body>
</html>