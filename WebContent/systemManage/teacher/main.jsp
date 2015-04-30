<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<script type="text/javascript"
	src="../systemManage/teacher/js/teacher_main.js" charset="UTF-8"></script>
<form>
	<div class="menubar" id="teacherbar" align="left">
		<div class="searchInput">
			&nbsp;&nbsp;&nbsp;&nbsp;查询:&nbsp;<select class="select"
				style="background-color: #F2F2F2; border: 1px solid #999; position: relative; top: 5px;"
				id="condition1" tabindex="1">
				<option value="0">全部教师信息</option>
				<option value="1">按编号查询</option>
				<option value="2">按姓名查询</option>
			</select> &nbsp;&nbsp;<input type="text" id="input" disabled="disabled"
				style="width: 100px;" class="text small"> &nbsp;&nbsp;
				 <input id="search_but"  type="button" value="搜索" class="submit special">
				 
				 
				 &nbsp;&nbsp;&nbsp;&nbsp;
				  <input id="add_but"  type="button" value="添加" class="submit">
				  &nbsp;&nbsp;&nbsp;&nbsp;
				   <input id="edit_but"  type="button" value="编辑" class="submit">
		</div>
	</div>
</form>
<div class="container_12" id="teacher_main"></div>
