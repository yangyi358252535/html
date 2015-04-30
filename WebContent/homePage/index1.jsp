<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String rid = (String) session.getAttribute("RoleId");
	String theme = (String) session.getAttribute("skins");
	String rtype = (String) session.getAttribute("RoleType");
	if (rid == null) {
		rid = "noExist";
	}
%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="shortcut icon" href="../images/logo.ico" type="image/x-icon" />
<link rel="stylesheet" type="text/css" href="../themes2_css/icon.css" />
<link rel="stylesheet" type="text/css" href="../themes2_css/maincss.css" />
<link rel="stylesheet" type="text/css" href="../themes2_css/left.css" />
<link rel="stylesheet" type="text/css" href="../themes2_css/style.css" />
<link rel="stylesheet" href="../themes2_css/easyui.css" />
<link rel="stylesheet" href="../themes2_css/excite-bike/jquery-ui.css" />
<script type="text/javascript" src="../js/jquery-1.9.1.min.js" charset="UTF-8"></script>
<script type="text/javascript" src="../js/sidehome.js" charset="UTF-8"></script>
<script type="text/javascript" src="../js/SystemUtil.js" charset="UTF-8"></script>
<script type="text/javascript" src="../js/popup.js" charset="UTF-8"></script>
<script type="text/javascript" src="../homePage/js/main.js" charset="UTF-8"></script>
<script type="text/javascript" src="../js/jquery-ui.min.js" charset="UTF-8"></script>
<script type="text/javascript" src="../js/jquery.form.js" charset="UTF-8"></script>
<script type="text/javascript" src="../js/jquery.validate.js" charset="UTF-8"></script>
<script type="text/javascript" src="../js/jquery.validate.message_cn.js" charset="UTF-8"></script>
<script type="text/javascript" src="../js/jquery.easyui.min.js"
	charset="UTF-8"></script>
<script type="text/javascript" src="../js/jquery-ui-timepicker-addon.js"
	charset="UTF-8"></script>
<title>学生评优管理系统</title>
</head>
<body id="bodyId"  >
	<input type="hidden" value='themes2_css' id="session_theme">
	<%@include file="../template/header.jsp" %>
	<%@include file="../template/leftmenu.jsp" %>
	<div id="main" class="0">
		<jsp:include page="welcome.jsp"></jsp:include>
	</div>
	<div id="footer">
		<p>&copy; XXXXXX大学软件工程XXXXXXX | All Rights Reserved</p>
		<p class="credit">推荐使用IE8+、Chrome、FireFox等浏览器使用该系统</p>
	</div>
	<div id="hidden" style="display: none;"></div>
</body>
<div><jsp:include page="../template/showInformation.jsp"></jsp:include></div>
</html>