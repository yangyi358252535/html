<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<h2>添加教师信息</h2>
<form action="../systemManage/teacher/addProcess.action" method="post"
	id="addForm">
	<p>
		<label><span style="color: red">*</span>教师姓名:</label>
		<s:textfield name="teacher.name" id="name" cssStyle="width:70px;"
			cssClass="text small"></s:textfield>
		<span class="error"></span>
	</p>
	<p>
		<label><span style="color: red">*</span>教师年龄:</label> 
		<s:textfield name="teacher.age" id="age" cssStyle="width:50px;"
			cssClass="text small"></s:textfield>
		<span class="error"></span>
	</p>

	<p>
		<label><span style="color: red">*</span>班级信息</label> 
		<s:select list="claszList" id="pl" listKey="id" listValue="name"
			name="teacher.clasz.id" cssClass="select" emptyOption="true"></s:select>
		<span class="error"></span>
	</p>
	<p>
		<input id="add_b111" type="button" value="添加" class="submit">
		&nbsp;&nbsp;&nbsp;&nbsp; <input id="cancel_b" type="button" value="取消"
			class="submit special">
	</p>
</form>
