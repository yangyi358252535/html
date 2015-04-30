<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<script type="text/javascript"
	src="../appraiseManage/rank/js/rank_main.js" charset="UTF-8"></script>
<script>
</script>
<div class="menubar" id="rankbar" align="right">
	<div class="searchInput">
		&nbsp;&nbsp;&nbsp;&nbsp;查询:&nbsp;<select class="searchMed" id="condition1" tabindex="1">
			<option value="0">全部排名信息</option>
			<option value="1">按姓名查询</option>
		</select>
		&nbsp;&nbsp;<input type="text" size="20px" id="input" tabindex="3" disabled="disabled"
			style="position: absolute; top: 1px;" class="inputTextStyleForSearh">
		&nbsp;&nbsp; <a id="search_but" tabindex="4"
			class="ui-button ui-widget ui-state-default ui-corner-all ui-button-text-icon-primary"
			style="width: 55px; height: 20px; left:140px;bottom:0px;"> <span
			class="ui-icon ui-icon-search" style="left: 5px;"></span>
			<span style="position: relative; left: 5px;top:1px;">搜索</span> </a>
			&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;
		<span style="width: 60px; height: 27px; left: 200px;position: relative;">
			&nbsp;排名年份：
		<select class="searchMed" id="year_str" style="width: 70px;" >
			<option value="2015" >2015</option>
			<option value="2016">2016</option>
			<option value="2017">2017</option>
			<option value="2018">2018</option>
			<option value="2019">2019</option>
		</select>
		</span>
		<span style="width: 60px; height: 27px; left: 200px;position: relative;">
		&nbsp;排名学期：
		<select style="width:90px;" id="item_str" class="searchMed" >
			<option value="0" >上半学期</option>
			<option value="1">下半学期</option>
		</select>
		</span>
		&nbsp;&nbsp; <a id="rank_but" tabindex="4"
			class="ui-button ui-widget ui-state-default ui-corner-all ui-button-text-icon-primary"
			style="width: 95px; height: 20px; left:200px;bottom:0px;"> <span
			class="ui-icon ui-icon-search" style="left: 5px;"></span>
			<span style="position: relative; left: 5px;top:1px;">开始排名</span> </a>
	</div>
</div>
<div id="tabs" style="right: 30px; top: 53px;">
<div class="rightlist" id="rank_main"></div>
</div>
