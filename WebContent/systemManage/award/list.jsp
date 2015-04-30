<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<h3>奖项信息列表</h3>
<table border="1" class="list" id="awardlist" cellspacing="0"
	cellpadding="0">
	<thead>
		<tr>
			<td width="2%"><s:checkbox id="selectAll" name="all" /></td>
			<td width="4%">序号</td>
			<td width="12%">奖项编号</td>
			<td  width="55%">奖项名称</td>
			<td  width="15%">评优积分</td>
			<td  width="15%">使用状态</td>
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
				<td><s:property value="integration" /></td>
				<td>
					<s:if test="deleteflag==0">使用中</s:if>
					<s:elseif test="deleteflag==1">禁用中</s:elseif>
				</td>
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
	</span>个奖项信息
</p>
