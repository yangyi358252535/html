<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<div id="leftmenu">
		<div style="position: absolute; top:0px;left:5px;width:163px;">
			<div id="accordion">
				<s:iterator value="#session.BO_MenuAndAuthInfoList" var="menuList">
					<div class="group">
						<h3><s:property value="#menuList.keySet()"/></h3>
						<div>
							<ul>
								<s:iterator value="#menuList.keySet()" id="menusValueIndex">
									<s:iterator value="#menuList.get(#menusValueIndex)" id="menuValueIndex">
										<li>
									      <a href="#" title='<s:property value="#menuValueIndex.authName_Chinese"/>' name='<s:property value="#menuValueIndex.source_Url"/>'><s:property value="#menuValueIndex.authName_Chinese"/></a>
									    </li>
								     </s:iterator>
								</s:iterator>
							</ul>
						</div>
					</div>
				</s:iterator>
			</div>
		</div>
	</div><!--  -->