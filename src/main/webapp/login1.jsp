<%@ page language="java" import="java.util.*,com.erp.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"  "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
  <head>
    <base href="<%=basePath%>">
    <title>登录</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<%
		String easyuiThemeName="default";
		Cookie cookies[] =request.getCookies();
		if(cookies!=null&&cookies.length>0){
			for(Cookie cookie : cookies){
				if (cookie.getName().equals("cookiesColor")) {
					easyuiThemeName = cookie.getValue();
					break;
				}
			}
		}
	%>
	<%
		//获取用户客户端mac地址
		String smac = "";
		String sip = request.getHeader("x-forwarded-for");
		if (sip == null || sip.length() == 0 || "unknown".equalsIgnoreCase(sip))
		{
			sip = request.getHeader("Proxy-Client-IP");
		}
		if (sip == null || sip.length() == 0 || "unknown".equalsIgnoreCase(sip))
		{
			sip = request.getHeader("WL-Proxy-Client-IP");
		}
		if (sip == null || sip.length() == 0 || "unknown".equalsIgnoreCase(sip))
		{
			sip = request.getRemoteAddr();
		}
		UdpGetClientMacAddr umac = new UdpGetClientMacAddr(sip);
		smac = umac.GetRemoteMacAddr();
	%>
	<link rel="stylesheet" type="text/css" href="themes/<%=easyuiThemeName %>/easyui.css"></link>
	<script type="text/javascript" src="js/jquery-1.8.0.min.js"></script>
	<script type="text/javascript" src="js/extBrowser.js"></script>
	<link rel="stylesheet" type="text/css" href="themes/icon.css">
	<link rel="stylesheet" type="text/css" href="css/common.css">
	<script type="text/javascript" src="js/jquery.easyui.min.js"></script>
	<script type="text/javascript" src="js/easyui-lang-zh_CN.js"></script>
	<script type="text/javascript" src="js/iphone.check.js"></script>
	<script type="text/javascript">
		$(function(){
			//点击换一换验证码
			$('#Kaptcha').click(     
			        function() {     
			           $(this).hide().attr('src',     
			                    'Kaptcha.jpg?' + Math.floor(Math.random() * 100)).fadeIn();     
		        });
			//noty({"text":"This is an alertsdfffffffffffffffffffffffff","layout":"top","type":"alert","closeButton":"false"});
		});
		function submitForm(){
			$("#loginForm").form('submit', {
			    url : "systemAction!load.action",
				success : function(data) {
					var result=eval('('+data+')');
					if(result.status){
						window.location.href='index.jsp';
						return;
					}else{
						$.messager.alert(result.title, result.message);
					}
				}
			});
		}
		
		if(top!=self){
			if(top.location != self.location)
			 top.location=self.location; 
		}
	</script>
	<style type="text/css">
		body {
			font-family: Verdana, Geneva, sans-serif;
			font-size: 12px;
		}
		
	</style>
  </head>
 <body style="background-image: url('extend/log_bg.gif');background-repeat: repeat-x;">
	<div align="center" id="deviceInfoBox" class="unsupported-browser">
    </div>
	<div align="center">
		<div style="height: 188px;"></div>
		<div
			style="padding:3px 2px;font-weight:bold;font-size: 22px;font-family: '微软雅黑','黑体';color: #C33436;">欢迎登录</div>
		<div style="margin-top: 37px;height: 185px;width: 372px;background-image: url('extend/log_con_bg.gif');">
			<form id="loginForm" method="post">
			<input value=<%=smac %> name="userMacAddr" type="hidden" size="20"/>
				<div style="height: 10px;"></div>
				<div style="margin-top: 15px;">
					<label for="name">用户名：</label> <input class="easyui-textbox easyui-validatebox" data-options="required:true" type="text" name="userName" id="userName" value="admin" missingMessage="用户名不能为空"></input>
				</div>
				<div style="margin-top: 15px;">
					<label for="name">密<span style="margin-left:12px;">码：</span>
					</label> <input class="easyui-textbox easyui-validatebox" data-options="required:true" type="password" name="password" value="admin" missingMessage="密码不能为空"></input>
				</div>
				<div style="margin-top: 15px;">
					<div style="width: 213px;" align="left">
						<label for="name">验证码：</label> 
						<input class="easyui-textbox easyui-validatebox"  type="text" name="captcha" id="captcha" style="width:64px;"/> 
						<span style="margin-left: 8px;"></span>
						<img style="width:68px;height:22px;" align="absmiddle" id="Kaptcha" src="Kaptcha.jpg"/>
					</div>
				</div>
				<div style="margin-top: 15px;">
				   <div style="width: 213px;" align="left">
						<a id="submitForm" href="javascript:void(0)" onclick="submitForm();" class="easyui-linkbutton">登 录</a> 
					<span style="margin-left:10px;"></span>
						<a id="clearForm" href="javascript:void(0)" class="easyui-linkbutton">重 置</a>
					</div>
					<div align="right" style="float: right;margin-top: -24px;margin-right: 28px;">
						<a id="rollBack" class="easyui-linkbutton" data-options="toggle:true" href="javascript:void(0)" >数据库初始化</a>
					</div>
				</div>
			</form>
		</div>
	</div>
</body>
</html>
