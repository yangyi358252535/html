<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>XXXX</title>

<script type="text/javascript" src="homePage/js/jquery-1.9.1.min.js"
	charset="UTF-8"></script>
<script type="text/javascript" src="homePage/js/login.js"
	charset="UTF-8"></script>
<!--Initiate form validation - in this example on the login form-->
<script type="text/javascript">
</script>


<!--This is the styling for the error message for form validation-->
<style type="text/css">
.error {
	padding: 7px;
	margin: 3px;
	background-color: #FCC;
	border: 1px solid #F00;
	font-family: arial;
	font-size: 10px;
	font-style: normal;
	font-weight: normal;
	font-variant: normal;
	color: #000;
	float: left;
	width: 98%;
	-moz-border-radius: 5px;
	-webkit-border-radius: 5px;
}
</style>

<link href="homePage/css/styles.css" rel="stylesheet" type="text/css" />
</head>

<body>

	<div id="admin_wrapper">
		<form action="#" id="loginform">
			<div id="logo">
				<h1>
					Real<span>Admin</span>
				</h1>
			</div>
			<!-- END LOGO -->
			<p style="color:red;" class="l_message"></p>
			<!-- TEXTBOXES -->
			<label>账号</label><br /> <input type="text" value="admin"
				class="text large required" title="请输入用户名" id="username" /> <br />

			<div class="clearfix">&nbsp;</div>
			<label>密码</label><br /> <input name="password" type="password" id="password" value="admin"
			title="请输入密码" class="text large required" /> <br />
			<div class="clearfix">&nbsp;</div>
			<p>
				<input name="btnLogin" type="button" class="submit" id="login_but1" value="登录" />
			</p>
		</form>
	</div>
	<!-- end admin wrapper -->

</body>
</html>
