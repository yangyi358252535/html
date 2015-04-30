<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<s:if test="isFirstAvailiable()==false">首页</s:if>
<s:elseif test="isFirstAvailiable()==true">
	<a href="#" class="prevpage" id="firstPageofPopup">首页</a>
</s:elseif>
&nbsp;&nbsp;
<s:if test="isPreviousAvailiable()==false">上一页</s:if>
<s:elseif test="isPreviousAvailiable()==true">
	<a href="#" class="prevpage" id="prePageofPopup">上一页</a>
</s:elseif>
&nbsp;&nbsp; 第
<span class="thispage" id="thisPageofPopup"> <s:property
		value="currentPage" /> </span>
页&nbsp;&nbsp; 共
<span class="allpage" id="pageAllofPopup"><s:property
		value="totalPageAmount" /> </span>
页 &nbsp;&nbsp;
<s:if test="isNextAvailiable()==false">下一页</s:if>
<s:elseif test="isNextAvailiable()==true">
	<a href="#" class="nextpage" id="nextPageofPopup">下一页</a>
</s:elseif>
&nbsp;&nbsp;
<s:if test="isLastAvailiable()==false">尾页</s:if>
<s:elseif test="isLastAvailiable()==true">
	<a href="#" class="lastpage" id="lastPageofPopup">尾页</a>
</s:elseif>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<span><s:textfield
		cssStyle="text-align: right;width:30px;height:15px;border-color: gray;border-style: groove;border-width: thin;"
		id="jumpPageofPopup" />&nbsp;&nbsp;<a href="#" class="lastpage"
	id="jumpofPopup">跳转</a>
</span>