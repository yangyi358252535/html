<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<script type="text/javascript"
	src="../myinfoManage/score/js/score_main.js" charset="UTF-8"></script>
<script>
</script>
<div class="menubar" id="scorebar" align="right">
	<div class="searchInput">
		&nbsp;&nbsp;&nbsp;&nbsp;查询:&nbsp;<select class="searchMed" style="width: 160px;" id="condition1" tabindex="1">
			<option value="0">全部成绩信息</option>
			<option value="1">按年份查询</option>
			<option value="2">按科目查询</option>
			<option value="3">按学期查询</option>
		</select> 
		&nbsp;&nbsp;<select class="searchMed" style="width: 100px;" id="condition2" tabindex="2" disabled="disabled"></select>
		&nbsp;&nbsp; <a id="search_but" tabindex="4"
			class="ui-button ui-widget ui-state-default ui-corner-all ui-button-text-icon-primary"
			style="width: 55px; height: 20px; left:20px;bottom:0px;"> <span
			class="ui-icon ui-icon-search" style="left: 5px;"></span>
			<span style="position: relative; left: 5px;top:1px;">搜索</span> </a>
	</div>
</div>
<div id="tabs" style="right: 30px; top: 53px;">
<div class="rightlist" id="score_main"></div>
</div>
