<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<h3>
	<a href="#" style="color: white">学生信息列表</a>-><span style="color: white">修改学生信息</span>
</h3>
<s:form action="../appraiseManage/student/modifyProcess.action" method="post" id="editForm">
	<s:hidden name="student.id"></s:hidden>
	<table class="list" border="0" cellspacing="0" cellpadding="0">
		<tr>
			<td>学生编号</td>
			<td colspan="2"><div align="left">
					&nbsp;&nbsp;
					<s:property value="student.num"/>
				</div>
			</td>
		</tr>
		<tr id="customNa">
			<td width="200px;"><span style="color: red">*</span>学生姓名</td>
			<td colspan="2"><div align="left">
					&nbsp;&nbsp;
					<s:textfield id="studentName" type="text" size="20" tabindex="5"
						maxlength="6" name="student.name" cssClass="inputTextStyle1" />
					&nbsp;&nbsp;<span id="customNameError" class="errorSpan"></span>
				</div></td>
		</tr>
		<tr>
			<td>性别</td>
			<td colspan="2"><div align="left">
					&nbsp;&nbsp;
					<s:radio list="#{'男':'男','女':'女' }" value="'男'" name="student.sex"></s:radio>
				</div></td>
		</tr>
		<tr>
			<td><span style="color: red">*</span>联系电话</td>
			<td colspan="2"><div align="left">
					&nbsp;&nbsp;
					<s:textfield id="tel" name="student.tel" cssClass="inputTextStyle1" size="20"/>
					&nbsp;&nbsp;<span id="customTelError" class="errorSpan"></span>
				</div></td>
		</tr>
		<tr>
			<td colspan="2">
				<div align="center">
					<a id="edit_b" tabindex="3"
						class="ui-button ui-widget ui-state-default ui-corner-all ui-button-text-icon-primary"
						style="width: 80px; height: 25px;"> <span
						class="ui-icon ui-icon-wrench" style="left: 5px;"></span> <span
						style="position: relative; left: 5px;">修改</span> </a> &nbsp; &nbsp;
					&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <a id="cancel_b"
						tabindex="4"
						class="ui-button ui-widget ui-state-default ui-corner-all ui-button-text-icon-primary"
						style="width: 80px; height: 25px;"> <span
						class="ui-icon ui-icon-arrowreturnthick-1-w" style="left: 5px;"></span>
						<span style="position: relative; left: 5px;">取消</span> </a>
				</div>
			</td>
		</tr>
	</table>
</s:form>