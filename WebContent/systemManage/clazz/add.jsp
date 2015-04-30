<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<h3 id="h3_head">
	<a href="#" style="color: white">班级信息列表</a>-><span style="color: white">添加班级信息</span>
	<%@ include file="../../template/H3_header.jsp"%>
</h3>
<form action="../systemManage/clazz/addProcess.action" method="post"
	id="addForm">
	<div id="topDIV">
		<table class="list" border="0" cellspacing="0" cellpadding="0">
			<tr>
				<td width="140px"><span	style="color: red">*</span>班级名称</td>
				<td colspan="2"><div align="left">
						&nbsp;&nbsp;
						<s:textfield  name="clasz.name" id="name"  maxlength="20" cssClass="inputTextStyle"></s:textfield>
						&nbsp;&nbsp;<span class="errorSpan"></span>
					</div>
				</td>
			</tr>
			<tr>
				<td colspan="3">
					<div align="center">
						<a id="add_b111" 
							class="ui-button ui-widget ui-state-default ui-corner-all ui-button-text-icon-primary"
							style="width: 80px; height: 25px;"> <span
							class="ui-icon ui-icon-check" style="left: 5px;"></span> <span
							style="position: relative; left: 5px;">添加</span> </a> &nbsp; &nbsp;
						&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <a id="cancel_b"
							class="ui-button ui-widget ui-state-default ui-corner-all ui-button-text-icon-primary"
							style="width: 80px; height: 25px;"> <span
							class="ui-icon ui-icon-arrowreturnthick-1-w" style="left: 5px;"></span>
							<span style="position: relative; left: 5px;">取消</span> </a>
					</div>
				</td>
			</tr>
		</table>
	</div>
</form>