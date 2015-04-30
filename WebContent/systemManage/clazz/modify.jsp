<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<h3>
	<a href="#" style="color: white">班级信息列表</a>-><span style="color: white">修改班级信息</span>
</h3>
<s:form action="../systemManage/clazz/modifyProcess.action"
	method="post" id="editForm">
	<s:hidden name="clasz.id" id="eId"></s:hidden>
	<s:hidden name="clasz.count"></s:hidden>
	<s:hidden name="clasz.state"></s:hidden>
	<table class="list" border="0" cellspacing="0" cellpadding="0">
		<tr>
			<td width="140px">班级名称</td>
			<td colspan="2"><div align="left">
					&nbsp;&nbsp;
					<s:textfield  id="name" name="clasz.name"  cssClass="inputTextStyle"></s:textfield>
					&nbsp;&nbsp;<span class="errorSpan"></span>
				</div>
			</td>
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