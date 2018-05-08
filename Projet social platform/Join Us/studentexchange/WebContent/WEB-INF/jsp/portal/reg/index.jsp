<%@ page language="java" contentType="text/html; charset=utf8" pageEncoding="utf8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<jsp:include page="/portal/common/static.jsp" />
</head>


<body id="nv_member" class="pg_register" onkeydown="if(event.keyCode==27) return false;">
	<jsp:include page="/portal/common/menu.jsp" />


	<div id="wp" class="wp">
		<script type="text/javascript">
		  
			var msg = "<s:property value="msg"/>";
			if(msg!=''){
				alert(msg);
			}
		</script>

		<script src="<%=request.getContextPath()%>/portal/js/register.js"
			type="text/javascript"></script>
		<div id="ct" class="ptm wp cl">
			<div class="nfl" id="main_succeed" style="display: none">
				<div class="f_c altw">
					<div class="alert_right">
						<p id="succeedmessage"></p>
						<p id="succeedlocation" class="alert_btnleft"></p>
						<p class="alert_btnleft">
							<a id="succeedmessage_href">如果您的浏览器没有自动跳转，请点击此链接</a>
						</p>
					</div>
				</div>
			</div>
			<div class="bm_h bbs" id="main_hnav">
				<h3 id="layer_reginfo_t" class="xs2" style="padding-left: 5px">
					快速注册 </h3>
			</div>

			<div class="mn" style="background-color: #fff; overflow: hidden">
				<div class="bm" id="main_message"
					style="border: 0px; float: left; width: 580px; overflow: hidden">



					<p id="returnmessage4"></p>

					<form method="post" autocomplete="off" name="register"
						id="registerform" enctype="multipart/form-data"
						onsubmit="checksubmit();return false;"
						action="<%=request.getContextPath()%>/myportalreg/portalreg.action">
						<div id="layer_reg" class="bm_c">
							<div class="mtw">
								<div id="reginfo_a">
									<div class="rfm">
										<table>
											<tbody>
												<tr>
													<th><span class="rq">*</span><label for="account">登录帐号:</label></th>
													<td><input type="text" id="username" name="user.username"
														class="px" tabindex="1" value="<s:property value="user.username"/>" autocomplete="off"
														size="25" maxlength="15" required=""></td>
												</tr>
											</tbody>
										</table>
									</div>

									<div class="rfm">
										<table>
											<tbody>
												<tr>
													<th><span class="rq">*</span><label for="O81XHg">密码:</label></th>
													<td><input type="password" id="repassword" name="user.password"
														size="25" tabindex="1" class="px" required=""></td>
													
												</tr>
											</tbody>
										</table>
									</div>

									<div class="rfm">
										<table>
											<tbody>
												<tr>
													<th><span class="rq">*</span><label for="uBJa2j">确认密码:</label></th>
													<td><input type="password" id="repassword" name="repassword"
														size="25" tabindex="1" value="" class="px" required=""></td>
													
												</tr>
											</tbody>
										</table>
									</div>
									
									<div class="rfm">
										<table>
											<tbody>
												<tr>
													<th><span class="rq">*</span>姓名:</th>
													<td><input type="text" id="name" name="user.name" 
														autocomplete="off" size="25" tabindex="1" class="px"
														value="<s:property value="user.name"/>" required=""></td>
												</tr>
											</tbody>
										</table>
									</div>
									
									<div class="rfm">
										<table>
											<tbody>
												<tr>
													<th><span class="rq">*</span>年龄:</th>
													<td><input type="text" id="age" name="user.age" 
														autocomplete="off" size="25" tabindex="1" class="px"
														value="<s:property value="user.age"/>" required=""></td>
												</tr>
											</tbody>
										</table>
									</div>
									
									<div class="rfm">
										<table>
											<tbody>
												<tr>
													<th><span class="rq">*</span>地址:</th>
													<td><input type="text" id="address" name="user.address" 
														autocomplete="off" size="25" tabindex="1" class="px"
														value="<s:property value="user.address"/>" required="">
													</td>
												</tr>
											</tbody>
										</table>
									</div>
									
									<div class="rfm">
										<table>
											<tbody>
												<tr>
													<th><span class="rq">*</span>电话:</th>
													<td><input type="text" id="phone" name="user.phone" 
														autocomplete="off" size="25" tabindex="1" class="px"
														value="<s:property value="user.phone"/>" required="">
													</td>
												</tr>
											</tbody>
										</table>
									</div>

									<div class="rfm">
										<table>
											<tbody>
												<tr>
													<th><span class="rq">*</span><label for="xjjCcM">邮箱:</label></th>
													<td><input type="text" id="email" name="user.email"
														autocomplete="off" size="25" tabindex="1" class="px"
														value="<s:property value="user.email"/>" required="">
													</td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
							</div>
						</div>
						<div id="layer_reginfo_b">
							<div class="rfm mbw bw0">
								<table width="100%">
									<tbody>
										<tr>
											<th>&nbsp;</th>
											<td><span id="reginfo_a_btn"> <em>&nbsp;</em>
													<button class="pn pnc" id="registerformsubmit"
														type="submit" name="regsubmit" value="true" tabindex="1">
														<strong>提交</strong>
													</button>
											</span></td>
											<td></td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>