$(document).ready(function() {
	 $(document).ready(function(){
		 $.ajaxSetup({
				contentType : "application/x-www-form-urlencoded;charset=utf-8",
				complete : function(XMLHttpRequest, textStatus) {
					// 通过XMLHttpRequest取得响应头，sessionstatus
					var sessionstatus = XMLHttpRequest.getResponseHeader("sessionstatus");
					if (sessionstatus == "timeout") {
						// 这里怎么处理在你，这里跳转的登录页面
						window.location.replace("../login.jsp");
					}
				}
		});
	 });
	var params = {

	};
	showList(params,'../appraiseManage/student/loadTAwardsList.action');
	$("#x").click(function() {
		//		clearCurrentPageSelected("desklist");
	});
	$("#close_but").click(function() {
		clearDivWindow();
		clearLockScreen();
		//		clearCurrentPageSelected("desklist");
	});
	$("#se_award_but").click(function() {
		var val=$("#award_info").val();
		var flag=$('input[name="award_ch"]:checked').val();
		if(val!=''){
			$(".pagination-first").click();
			$('#add_award_table').datagrid('loadData',{total:0,rows:[]}); 
			if(flag==3){
				showList(params,'../appraiseManage/student/loadTAwardsList.action');
			}else{
				var data={
						'award_flag':flag,
						'tolist_flag':'all',
						'condition_string':val
				};
				showList(data,'../appraiseManage/student/loadTAwardsList.action');
			}
		}else{
			if(flag==3){
				$(".pagination-first").click();
				$('#add_award_table').datagrid('loadData',{total:0,rows:[]}); 
				showList(params,'../appraiseManage/student/loadTAwardsList.action');
			}else if(flag==1){
				$("#award_info").focus();
				showAlertDialog("请输入奖项编号或关键字进行查询");
			}else if(flag==2){
				$("#award_info").focus();
				showAlertDialog("请输入奖项名称或关键字进行查询");
			}
		}
	});
	$("#tabs1").tabs();
	function showList(param,url) {
		$('#add_award_table').datagrid({
			url : url,
			width : 720,
			height : 320,
			queryParams : param,
			singleSelect : true,
			fitColumns : true,
			pagination : true,
			loadMsg : '加载中，请稍候...',
			columns : [ [ {
				field : 'award_Id',
				title : 'ID',
				width :10,
				hidden : true
			}, {
				field : 'award_Num',
				title : '奖项编号',
				width :100,
				align : 'center'
			}, {
				field : 'award_Name',
				title : '奖项名称',
				width :170,
				align : 'center'
			}, {
				field : 'award_Integration',
				title : '评优积分',
				width :80,
				align : 'center'
			}] ]
		});
	}
	$("#add_but_award").click(function() {
		var rows = $('#add_award_table').datagrid('getSelected');
		if (rows != null) {
			var awardId = rows.award_Id;
			var awardNum = rows.award_Num;
			var awardName = rows.award_Name;
			var awardIntegration = rows.award_Integration;
			var itemstr=$("#itemstr").val();
			var item="";
			if(itemstr==0){
				item="上半学期";
			}else{
				item="下半学期";
			}
			var size=$("#awardDetail tbody").find("tr").size();
			var result=true;
			if(size>0){
				for(var i=0;i<size;i++){
					var num=$("#awardDetail tbody").find("tr:eq("+i+")").find("td:eq(0)").text();
					var item1=$("#awardDetail tbody").find("tr:eq("+i+")").find("td:eq(3)").text();
					awardNum=awardNum.trim();
					item=item.trim();
					item1=item1.trim();
					num=num.trim();
					if(awardNum==num&&item1==item){
						result=false;
						break;
					}
				}
			}
			if(result){
				$("#itemTR").clone().appendTo("#awardDetail tbody");
				$("#awardDetail tbody").find("tr").last().attr({style:""});
				$("#awardDetail tbody").find("tr").last().find("td:eq(0)").find("label").html(awardNum);
				$("#awardDetail tbody").find("tr").last().find("td:eq(1)").find("label").html(awardName);
				$("#awardDetail tbody").find("tr").last().find("td:eq(2)").find("label").html(awardIntegration);
				$("#awardDetail tbody").find("tr").last().find("td:eq(3)").find("label").html(item);
				$("#awardDetail tbody").find("tr").last().append("<input type='hidden' value='"+awardId+"' name='awardid' >");
				$("#awardDetail tbody").find("tr").last().append("<input type='hidden' value='"+itemstr+"' name='itemid' >");
				$(".deleteButton").click(function(){
					var tr=$(this).parent().parent();
					var id=$(this).parent().parent().find("input[class='hiddenId']").val();
					if(id!=null&&id!=undefined&&id!=''){
						confirmInformation("你确定要删除当前的奖项信息么,删除后不可恢复",function(){
							//根据detailId删除记录
							$.ajax({
								data:{'detailId':id},
								url : '../appraiseManage/student/deleteAwardDetail.action',
								type : 'POST',
								async : false,
								success : function(data) {
									tr.remove();
								}
							});
						});
					}else{
						tr.remove();
					}
				});
				clearDivWindow();
				clearLockScreen();
			}else{
				showAlertDialog("请选择不同的奖项信息");
			}
		} else {
			showAlertDialog("请选择要添加的奖项信息");
		}
	});
});