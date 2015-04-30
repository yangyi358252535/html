<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>


<div class="grid_12">

	<div class="clearfix">&nbsp;</div>

	<ul id="pagination">
		<s:if test="isFirstAvailiable()==false">
			<li class="previous-off">首页</li>
		</s:if>
		<s:elseif test="isFirstAvailiable()==true">
			<li class="previous"><a href="#" id="firstPage">首页</a></li>
		</s:elseif>
		<s:if test="isPreviousAvailiable()==false">
			<li class="previous-off">上一页</li>
		</s:if>
		<s:elseif test="isPreviousAvailiable()==true">
			<li class="previous"><a href="#" id="prePage">上一页</a></li>
		</s:elseif>
		<li>第<span class="thispage" id="thisPage"> <s:property
					value="currentPage" />
		</span>页
		</li>
		<li>共<span class="allpage" id="pageAll"><s:property
					value="totalPageAmount" /> </span>页
		</li>
		<s:if test="isNextAvailiable()==false">
			<li class="previous-off">下一页</li>
		</s:if>
		<s:elseif test="isNextAvailiable()==true">
			<li class="next"><a href="#" id="nextPage">下一页</a></li>
		</s:elseif>
		<s:if test="isLastAvailiable()==false">
			<li class="previous-off">尾页</li>
		</s:if>
		<s:elseif test="isLastAvailiable()==true">
			<li class="previous-off">尾页</li>
			<li class="next"><a href="#" id="lastPage">尾页</a></li>
		</s:elseif>
	</ul>
	<ul>
		<li><span><s:textfield
		cssStyle="text-align: right;width:30px;height:15px;border-color: gray;border-style: groove;border-width: thin;"
		id="jumpPage" />&nbsp;&nbsp;<input  type="button" value="跳转" class="submit"  id="jump">
</span></li>
	</ul>
</div>
<span class="refresh">&nbsp;&nbsp;<a href="#" id="load"></a>
</span>
