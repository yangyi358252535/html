<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<div id="header" class="png_bg">
	<div id="head_wrap" class="container_12">
		<div id="logo" class="grid_4">
			<h1>
				ABC<span>ABC</span>
			</h1>
		</div>
		<div id="controlpanel" class="grid_8">
			<ul>
				<li><p>
						<strong>你好，Johnathan Doe</strong>
					</p></li>
				<li><a href="#" class="first">设置</a></li>
				<li><a href="#" class="last" id="logout">退出登录</a></li>
			</ul>
		</div>
		<div id="navigation" class=" grid_12">
			<ul>
				<li><a href="#" class="active" id="a_menu_home">主页</a></li>
				<s:iterator value="#session.BO_MenuAndAuthInfoList" var="menuList"
					status="var">
					<li><a href="#" id='<s:property value="#var.index"/>_menu' class="a_menu"><s:property
								value="#menuList.keySet()" /></a></li>
				</s:iterator>
			</ul>
		</div>
	</div>
</div>

<s:iterator value="#session.BO_MenuAndAuthInfoList" var="menuList" status="var">
	<div id="sub_nav" style="display: none;"
		class="<s:property value="#var.index"/>_menusub" accesskey="abc123">
		<div id="subnav_wrap" class="container_12">
			<div id="subnav" class=" grid_12">
				<ul>
					<s:iterator value="#menuList.keySet()" id="menusValueIndex">
						<s:iterator value="#menuList.get(#menusValueIndex)"
							id="menuValueIndex">
							<li><a href="#" title='<s:property value="#menuValueIndex.authName_Chinese"/>'   accesskey="abc111"
								name='<s:property value="#menuValueIndex.source_Url"/>'><s:property
										value="#menuValueIndex.authName_Chinese" /></a></li>
						</s:iterator>
					</s:iterator>
				</ul>
			</div>
		</div>
	</div>
</s:iterator>
