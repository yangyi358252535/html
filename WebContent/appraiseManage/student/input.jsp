<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<h3 id="h3_head">
	<a href="#" style="color: white">学生信息列表</a>-><span
		style="color: white">录入成绩</span>
	<%@ include file="../../template/H3_header.jsp"%>
</h3>
<form action="../appraiseManage/student/scoreProcess.action"
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
						<s:textfield id="readernum" name="student.name" disabled="true"  cssClass="inputTextStyleSmallNotBorderForMedi"/>
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
						<s:textfield id="createDate" name="student.createDate" disabled="true" cssClass="inputTextStyleSmallNotBorderForMedi" />
					</div>
				</td>
			</tr>
		</table>
	</div>
	<hr>
	<h3 id="h3_detail">
		<span style="color: white">科目成绩录入列表</span>
		<%@ include file="../../template/H3_header_detail.jsp"%>
	</h3>
	<div id="bottomDIV" >
		<div
			style="overflow-x: auto; overflow-y: auto; max-height: 300px; width: 100%">
			<table id="scoreList" border="1" border="0" cellspacing="0"
				cellpadding="0">
				<thead>
					<tr id="h_tr">
						<td width="1%">序号</td>
						<td width="18%">学科类型</td>
						<td width="5%">成绩</td>
						<td width="5%">评优积分</td>
						<td width="5%">年份</td>
						<td width="5%">学期</td>
					</tr>
				</thead>
				<tbody>
					<s:iterator value="scoreList" status="st">
						<tr>
							<s:hidden name="id"></s:hidden>
							<td><s:property value="#st.count+(currentPage-1)*10" /></td>
							<td><s:property value="type.mastername" /></td>
							<td>
								<s:textfield name="score" maxlength="4" cssClass="inputTextStyle1" cssStyle="width:50px;text-align:right;font-weight:bold;float:right;"></s:textfield>
							</td>
							<td><s:property value="integration" /></td>
							<td><s:property value="year_str" /></td>
							<td><s:property value="term.mastername" /></td>
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
					<a id="edit_b"
						class="ui-button ui-widget ui-state-default ui-corner-all ui-button-text-icon-primary"
						style="width: 80px; height: 25px;"> <span
						class="ui-icon ui-icon-check" style="left: 5px;"></span> <span
						style="position: relative; left: 5px;">提交</span>
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