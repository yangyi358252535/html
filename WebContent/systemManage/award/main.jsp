<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<script type="text/javascript"
	src="../systemManage/award/js/award_main.js" charset="UTF-8"></script>
<script>
</script>
<div class="menubar" id="awardbar" align="right">
	<a id="edit_but" tabindex="5"
		class="ui-button ui-widget ui-state-default ui-corner-all ui-corna ui-button-text-icon-primary"
		style="width: 80px; height: 27px;bottom:5px;">
		<span class="ui-icon ui-icon-tag" style="left: 5px;"></span>
		<span style="position:relative; top:5px; left:5px;">编辑</span>
	</a>&nbsp;&nbsp;&nbsp;&nbsp; 
	<a id="add_but" tabindex="7"
		class="ui-button ui-widget ui-state-default ui-corner-all ui-button-text-icon-primary"
		style="width: 80px; height: 27px;bottom:5px;">
		<span class="ui-icon ui-icon-plusthick" style="left: 5px;"></span>
		<span style="position:relative; top:5px;left:5px;">添加</span>
	</a>
	<div class="searchInput">
		&nbsp;&nbsp;&nbsp;&nbsp;查询:&nbsp;<select class="searchMed" id="condition1" tabindex="1">
			<option value="0">全部奖项信息</option>
			<option value="1">按编号查询</option>
			<option value="2">按名称查询</option>
		</select> 
		&nbsp;&nbsp;<input type="text" size="20px" id="input" tabindex="3" disabled="disabled"
			style="position: absolute; top: 1px;" class="inputTextStyleForSearh">
		&nbsp;&nbsp; <a id="search_but" tabindex="4"
			class="ui-button ui-widget ui-state-default ui-corner-all ui-button-text-icon-primary"
			style="width: 55px; height: 20px; left:140px;bottom:0px;"> <span
			class="ui-icon ui-icon-search" style="left: 5px;"></span>
			<span style="position: relative; left: 5px;top:1px;">搜索</span> </a>
	</div>
</div>
<div id="tabs" style="right: 30px; top: 53px;">
<div class="rightlist" id="award_main"></div>
</div>
