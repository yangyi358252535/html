<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<h2>教师信息列表</h2>
<table width="100%" border="0" cellpadding="0" cellspacing="0">

		<tr>
			<th scope="col"><s:checkbox id="selectAll" name="all" /></th>
			<th scope="col">序号</th>
			<th scope="col">教师编号</th>
			<th scope="col">教师姓名</th>
			<th scope="col">教师年龄</th>
			<th scope="col">班级</th>
		</tr>
	<tbody>
		<s:iterator value="DATALIST" status="st">
			<tr>
				<s:hidden name="id"></s:hidden>
				<td scope="col"><s:checkbox name="sel" /></td>
				<td scope="col"><s:property
						value="#st.count+(currentPage-1)*10" /></td>
				<td scope="col"><s:property value="num" /></td>
				<td scope="col"><s:property value="name" /></td>
				<td scope="col"><s:property value="age" /></td>
				<td scope="col"><s:property value="clasz.name" /></td>
			</tr>
		</s:iterator>
	</tbody>
</table>
<div id="page">
	<jsp:include page="/template/page.jsp"></jsp:include>
</div>
<p class="rightbottom">
	当前共有<span class="number" style="color: red;"><s:property
			value="resultCount" /> </span>位教师信息
</p>
