<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<h3>成绩信息列表</h3>
<table border="1" class="list" id="scorelist" cellspacing="0"
	cellpadding="0">
	<thead>
		<tr>
			<td width="2%"><s:checkbox id="selectAll" name="all" />
			</td>
			<td>序号</td>
			<td>学科类型</td>
			<td>录入时间</td>
			<td>成绩</td>
			<td>评优积分</td>
			<td>年份</td>
			<td>学期</td>
			<td>学生姓名</td>
		</tr>
	</thead>
	<tbody>
		<s:iterator value="DATALIST" status="st">
			<tr>
				<s:hidden name="id"></s:hidden>
				<td><s:checkbox name="sel" /></td>
				<td><s:property value="#st.count+(currentPage-1)*10" /></td>
				<td><s:property value="type.mastername" /></td>
				<td>
					<s:if test="createDate==null||createDate==''">未记录</s:if>
					<s:else><s:property value="createDate" /></s:else>
				</td>
				<td>
					<s:if test="score==0">未记录</s:if>
					<s:else><s:property value="score" /></s:else>
				</td>
				<td><s:property value="integration" /></td>
				<td><s:property value="year_str" /></td>
				<td><s:property value="term.mastername" /></td>
				<td><s:property value="sudentName" /></td>
			</tr>
		</s:iterator>
	</tbody>
</table>
<div id="page">
	<jsp:include page="/template/page.jsp"></jsp:include>
</div>
<p class="rightbottom">
	当前共有<span class="number" style="color: red;"><s:property
			value="resultCount" />
	</span>条成绩信息
</p>
