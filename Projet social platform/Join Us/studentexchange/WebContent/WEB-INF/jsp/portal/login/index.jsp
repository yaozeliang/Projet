<%@ page language="java" contentType="text/html; charset=utf8"	pageEncoding="utf8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<jsp:include page="/portal/common/static.jsp" />
</head>


<body id="nv_member" class="pg_logging"
	onkeydown="if(event.keyCode==27) return false;">
	<jsp:include page="/portal/common/menu.jsp" />

<script type="text/javascript">
		  
			var msg = "<s:property value="msg"/>";
			if(msg!=''){
				alert(msg);
			}
		</script>


	<div id="wp" class="wp">
		<div id="ct" class="ptm wp w cl">

			<div class="bm" id="logintitle">
				<div>




					<div class="mn" id="main_message" style="width: 520px">

						<div id="main_messaqge_Lohv7">
							<div id="layer_login_Lohv7">
								<h3 class="flb">
									<em id="returnmessage_Lohv7"> </em> <span></span>
								</h3>
								<form method="post" autocomplete="off" name="login"
									id="loginform_Lohv7" class="cl"
									onsubmit="pwmd5(&#39;password3_Lohv7&#39;);pwdclear = 1;ajaxpost(&#39;loginform_Lohv7&#39;, &#39;returnmessage_Lohv7&#39;, &#39;returnmessage_Lohv7&#39;, &#39;onerror&#39;);return false;"
									action="<%=request.getContextPath()%>/myportallogin/portallogin.action">
									<div class="c cl">

										<div class="rfm">
											<table>
												<tbody>
													<tr>
														<th><label for="username_Lohv7">帐号:</label></th>
														<td><input type="text" name="user.username"
															id="username" autocomplete="off" size="30"
															class="px p_fre" tabindex="1" value="<s:property value="user.username"/>"></td>
														<td class="tipcol"><a
															href="<%=request.getContextPath()%>/myportalreg/portalreg.action">快速注册</a></td>
													</tr>
												</tbody>
											</table>
										</div>
										<div class="rfm">
											<table>
												<tbody>
													<tr>
														<th><label for="password3_Lohv7">密码:</label></th>
														<td><input type="password" id="password"
															name="user.password" onfocus="clearpwd()" size="30"
															class="px p_fre" tabindex="1"></td>
														<td class="tipcol"></td>
													</tr>
												</tbody>
											</table>
										</div>

										<div class="rfm mbw bw0">
											<table width="100%">
												<tbody>
													<tr>
														<th>&nbsp;</th>
														<td>
															<button class="pn pnc" type="submit" name="loginsubmit"
																value="true" tabindex="1">
																<strong>登录</strong>
															</button>
														</td>
													</tr>
												</tbody>
											</table>
										</div>


									</div>
								</form>
							</div>
							<script src="<%=request.getContextPath()%>/portal/js/md5.js" type="text/javascript" reload="1"></script>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>