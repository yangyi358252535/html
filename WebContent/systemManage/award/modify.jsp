<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<h3>
	<a href="#" style="color: white">奖项信息列表</a>-><span style="color: white">修改奖项信息</span>
</h3>
<s:form action="../systemManage/award/modifyProcess.action"
	method="post" id="editForm">
	<s:hidden name="awards.id" id="eId"></s:hidden>
	<s:hidden name="awards.num"></s:hidden>
	<table class="list" border="0" cellspacing="0" cellpadding="0">
		<tr>
			<td>奖项编号</td>
			<td colspan="2"><div align="left">
					&nbsp;&nbsp;
					<s:property value="awards.num" />
				</div></td>
		</tr>
		<tr>
			<td><span style="color: red">*</span>奖项名称</td>
			<td colspan="2"><div align="left">
					&nbsp;&nbsp;
					<s:textfield name="awards.name" id="name" cssClass="inputTextStyle"
						maxlength="20" />
					&nbsp;&nbsp;<span class="errorSpan"></span>
				</div></td>
		</tr>
		<tr>
			<td width="140px"><span style="color: red">*</span>评优积分</td>
			<td colspan="2"><div align="left">
					&nbsp;&nbsp;
					<s:textfield name="awards.integration" id="integration"
						cssClass="inputTextStyle" maxlength="1" />
					&nbsp;&nbsp;<span class="errorSpan"></span>
				</div></td>
		</tr>
		<tr>
			<td><span style="color: red">*</span>使用状态</td>
			<td><div align="left">
					&nbsp;&nbsp;
					<s:radio list="#{0:'使用',1:'禁用'}" listKey="key" listValue="value"
						id="esta" name="awards.deleteflag"></s:radio>
				</div></td>
		</tr>
		<tr>
			<td colspan="2">
				<div align="center">
					<a id="edit_b" tabindex="3"
						class="ui-button ui-widget ui-state-default ui-corner-all ui-button-text-icon-primary"
						style="width: 80px; height: 25px;"> <span
						class="ui-icon ui-icon-wrench" style="left: 5px;"></span> <span
						style="position: relative; left: 5px;">修改</span>
					</a> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <a
						id="cancel_b" tabindex="4"
						class="ui-button ui-widget ui-state-default ui-corner-all ui-button-text-icon-primary"
						style="width: 80px; height: 25px;"> <span
						class="ui-icon ui-icon-arrowreturnthick-1-w" style="left: 5px;"></span>
						<span style="position: relative; left: 5px;">取消</span>
					</a>
				</div>
			</td>
		</tr>
	</table>
</s:form>