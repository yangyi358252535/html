<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<h3 id="h3_head">
	<a href="#" style="color: white">学生信息列表</a>-><span
		style="color: white">添加奖项信息</span>
	<%@ include file="../../template/H3_header.jsp"%>
</h3>
<form action="../appraiseManage/student/awardProcess.action"
	method="post" id="addForm">
	<s:hidden name="student.id"></s:hidden>
	<s:hidden name="year_str"></s:hidden>
	<div id="topDIV">
		<table border="1" border="0" cellspacing="0" cellpadding="0">
			<tr >
				<td>学生编号</td>
				<td><div align="left" >
						&nbsp;&nbsp;
						<s:textfield  id="num" name="student.num" disabled="true"
						 cssClass="inputTextStyleSmallNotBorderForMedi"></s:textfield>
					</div>
				</td>
				<td>学生姓名</td>
				<td>
					<div align="left" >
					&nbsp;&nbsp;
						<s:textfield id="readernum" name="student.name" disabled="true" cssClass="inputTextStyleSmallNotBorderForMedi" />
					</div>
				</td>
			</tr>
			<tr >
				<td>电话号码</td>
				<td><div align="left" >
						&nbsp;&nbsp;
						<s:textfield  id="tel" name="student.tel" disabled="true"
						 cssClass="inputTextStyleSmallNotBorderForMedi"></s:textfield>
					</div>
				</td>
				<td>注册时间</td>
				<td>
					<div align="left" >
					&nbsp;&nbsp;
						<s:textfield id="createDate" name="student.createDate" disabled="true" cssClass="inputTextStyleSmallNotBorderForMedi"/>
					</div>
				</td>
			</tr>
		</table>
	</div>
	<hr>
	<h3 id="h3_detail">
		<span style="color: white">奖项信息列表</span>
		<%@ include file="../../template/H3_header_detail.jsp"%>
	</h3>
	<div id="bottomDIV" >
		<div
			style="overflow-x: auto; overflow-y: auto; max-height: 300px; width: 100%">
			<table id="billDetail_toolBar" border="1" border="0" cellspacing="0"
				cellpadding="0">
				<tr>
					<td width="20%"><span style="color: red">*</span>请选择奖项信息</td>
					<td colspan="6"><a id="choise_award_but"
						class="ui-button ui-widget ui-state-default ui-corner-all ui-corna ui-button-text-icon-primary"
						style="position: relative; width: 60px; height: 20px; left: -350px;">
							<span class="ui-icon ui-icon-plus" style="left: 5px;"></span> <span
							style="position: relative; top: -3px; left: 5px;">添加</span>
					</a> &nbsp;&nbsp;&nbsp;&nbsp; 
					</td>
				</tr>
			</table>
			<table id="awardDetail" border="1" border="0" cellspacing="0"
				cellpadding="0">
				<thead>
					<tr id="h_tr">
						<td width="6%">奖项编号</td>
						<td width="20%">奖项名称</td>
						<td width="5%">评优积分</td>
						<td width="10%">学期</td>
						<td width="7%">操作</td> 
					</tr>
					<tr id="itemTR" style="display: none;">
							<td><s:label />
							</td>
							<td><s:label />
							</td>
							<td><s:label />
							</td>
							<td><s:label />
							</td>
							<td>
								<button class="btn btn-small btn-danger deleteButton" type="button">删除</button>
							</td>
						</tr>
				</thead>
				<tbody>
					<s:iterator value="awardsDetailList" status="st">
						<tr>
							<s:hidden name="id" cssClass="hiddenId"></s:hidden>
							<td><s:property value="awards.num" /></td>
							<td><s:property value="awards.name" /></td>
							<td><s:property value="awards.integration" /></td>
							<td><s:property value="term.mastername" /></td>
							<td>
								<button class="btn btn-small btn-danger deleteButton" type="button">删除</button>
							</td>
						</tr>
					</s:iterator>
				</tbody>
			</table>
		</div>
	</div>
	<table border="0" cellspacing="0" cellpadding="0"
		style="position: relative; bottom: 0px;">
		<tr>
			<td>
				<div align="right">
					<a id="add_b"
						class="ui-button ui-widget ui-state-default ui-corner-all ui-button-text-icon-primary"
						style="width: 80px; height: 25px;"> <span
						class="ui-icon ui-icon-check" style="left: 5px;"></span> <span
						style="position: relative; left: 5px;">录入</span>
					</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a id="cancel_b"
						class="ui-button ui-widget ui-state-default ui-corner-all ui-button-text-icon-primary"
						style="width: 80px; height: 25px;"> <span
						class="ui-icon ui-icon-arrowreturnthick-1-w" style="left: 5px;"></span>
						<span style="position: relative; left: 5px;">取消</span>
					</a>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				</div>
			</td>
		</tr>
	</table>
</form>