<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="../appraiseManage/student/js/choiceAward.js"
	charset="UTF-8"></script>
	<style type="text/css">
a:hover{
	text-decoration: none;
	color: #FCDD4A;
}
</style>
</head>
<div align="left">
		&nbsp;&nbsp;&nbsp;&nbsp;
		<span style="color:red;">查询: </span>
		<s:textfield id="award_info" cssClass="inputTextStyleForFindMedicines"></s:textfield>
		&nbsp;&nbsp;
		<span>
			<s:radio list='#{"1":"按奖项编号","2":"按奖项名","3":"全部"}' id="custom_choice" listKey="key"
						listValue="value" name="award_ch" value="3"></s:radio>		
		</span>
		&nbsp;&nbsp;
		<a id="se_award_but" tabindex="4"
			class="ui-button ui-widget ui-state-default ui-corner-all ui-button-text-icon-primary"
			style="width: 55px; height: 20px; left:0px;"> <span
			class="ui-icon ui-icon-search" style="left: 5px;"></span>
			<span style="position: relative; left: 5px;top:1px;">搜索</span> </a>
		<span class="span3" >
			<span style="font-weight:bold;">学期</span>
				<select class="input-small focused" style="font-weight:bold;width:95px;" id="itemstr">
				<option value="0" >上半学期</option>
				<option value="1">下班学期</option>
			</select>
		</span>
		
</div>
<div>
	&nbsp;
</div>
<div id="tabs1" style="margin: 0px 0px 0px 0px">
<table id="add_award_table" style="border:none;">
</table>
</div>
<a id="add_but_award"
	class="ui-button ui-widget ui-state-default ui-corner-all ui-button-text-icon-primary"
	style="position: absolute;bottom:3px;right:90px;width: 50px; height: 20px;"> <span
	class="ui-icon ui-icon-check" style="left: 3px;"></span>
	<span style="position: relative; left: 5px;top:2px;">选择</span> </a>
<a id="close_but"
	class="ui-button ui-widget ui-state-default ui-corner-all ui-button-text-icon-primary"
	style="position: absolute;bottom:3px;right:30px;width: 50px; height: 20px;"> <span
	class="ui-icon ui-icon-arrowreturnthick-1-w" style="left: 3px;"></span>
	<span style="position: relative; left: 5px;top:2px;">关闭</span> </a>
</html>