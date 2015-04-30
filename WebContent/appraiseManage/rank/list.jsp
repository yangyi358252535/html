<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<h3>排名信息列表</h3>
<table border="1" class="list" id="ranklist" cellspacing="0"
	cellpadding="0">
	<thead>
		<tr>
			<td width="2%"><s:checkbox id="selectAll" name="all" />
			</td>
			<td>序号</td>
			<td>排名学生</td>
			<td>名次</td>
			<td>总积分</td>
			<td>学年</td>
			<td>学期</td>
			<td>排名时间</td>
		</tr>
	</thead>
	<tbody>
		<s:iterator value="DATALIST" status="st">
			<tr>
				<s:hidden name="id"></s:hidden>
				<td><s:checkbox name="sel" /></td>
				<td><s:property value="#st.count+(currentPage-1)*10" /></td>
				<td><s:property value="student.name" /></td>
				<td><s:property value="place.mastername" /></td>
				<td><s:property value="integration" /></td>
				<td><s:property value="year_str" /></td>
				<td><s:property value="term.mastername" /></td>
				<td><s:property value="createDate" /></td>
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
	</span>条排名信息
</p>
