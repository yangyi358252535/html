<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<script type="text/javascript"
	src="../appraiseManage/score/js/score_main.js" charset="UTF-8"></script>
<script>
</script>
<div class="menubar" id="scorebar" align="right">
	<div class="searchInput">
		&nbsp;&nbsp;&nbsp;&nbsp;查询:&nbsp;<select class="searchMed" style="width: 160px;" id="condition1" tabindex="1">
			<option value="0">全部成绩信息</option>
			<option value="1">按学生姓名查询</option>
			<option value="2">按科目查询</option>
		</select> 
		&nbsp;&nbsp;<select class="searchMed" style="width: 100px;" id="condition2" tabindex="2" disabled="disabled"></select>
		&nbsp;&nbsp;<input type="text" size="20px" id="input" tabindex="3" disabled="disabled"
			style="position: absolute; top: 1px;width: 130px;" class="inputTextStyleForSearh">
		&nbsp;&nbsp; <a id="search_but" tabindex="4"
			class="ui-button ui-widget ui-state-default ui-corner-all ui-button-text-icon-primary"
			style="width: 55px; height: 20px; left:140px;bottom:0px;"> <span
			class="ui-icon ui-icon-search" style="left: 5px;"></span>
			<span style="position: relative; left: 5px;top:1px;">搜索</span> </a>
			<span style="width: 60px; height: 27px; left: 200px;position: relative;">
			&nbsp;记录成绩年份：
		<select class="searchMed" id="year_str" style="width: 70px;" >
			<option value="2015" >2015</option>
			<option value="2016">2016</option>
			<option value="2017">2017</option>
			<option value="2018">2018</option>
			<option value="2019">2019</option>
		</select>
		</span>
	</div>
</div>
<div id="tabs" style="right: 30px; top: 53px;">
<div class="rightlist" id="score_main"></div>
</div>
