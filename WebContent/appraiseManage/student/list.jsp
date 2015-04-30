<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<h3>学生信息列表</h3>
<table border="1" class="list" id="studentlist" cellspacing="0"
	cellpadding="0">
	<thead>
		<tr>
			<td width="2%"><s:checkbox id="selectAll" name="all" />
			</td>
			<td>序号</td>
			<td>学生编号</td>
			<td>姓名</td>
			<td>性别</td>
			<td>班级</td>
			<td>联系电话</td>
			<td>注册时间</td>
		</tr>
	</thead>
	<tbody>
		<s:iterator value="DATALIST" status="st">
			<tr>
				<s:hidden name="id"></s:hidden>
				<td><s:checkbox name="sel" /></td>
				<td><s:property value="#st.count+(currentPage-1)*10" /></td>
				<td><s:property value="num" /></td>
				<td><s:property value="name" /></td>
				<td><s:property value="sex" /></td>
				<td><s:property value="clasz.name" /></td>
				<td><s:property value="tel" /></td>
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
	</span>位学生信息
</p>
