$(document).ready(function(){
	$(".a_menu").click(function(){
		var currentId=$(this).attr("id");
		$("div[accesskey='abc123']").hide();
		$("."+currentId+"sub").show();
		$("#navigation").find("ul li a").attr("class","");
		$(this).attr("class","active");
	});
	$("#a_menu_home").click(function(){
		$("div[accesskey='abc123']").hide();
		$("#navigation").find("ul li a").attr("class","");
		$(this).attr("class","active");
	});
	$("a[accesskey='abc111']").click(function(){
		//清空翻页Id数组和AllID数组
		arrayId=[];
		dataId = [];
		var url=$(this).attr("name");
//		showLoading();
		$("#main_content_wrap").load(url,function(){
		});
		$("a[accesskey='abc111']").attr("class","");
		$(this).attr("class","sub_nav_active");
	});
	 $("#logout").click(function(){
		$.ajax({
			url : '../systemManage/manager/logout.action',
			type : 'POST',// html
			beforeSend : function(XMLHttpRequest) {
			},
			success : function(data1) {
				window.location.replace("../login.jsp");
			},
			complete : function() {
			},
			error : function(jqXHR, textStatus, errorThrown) {
				alert(errorThrown + " " + textStatus);
			}
		});
		});
	$("#config").click(function(){
		checklogin();
		PopUpWindow(850, 500, '设置', '../homePage/configeration.jsp');	
	});
});
