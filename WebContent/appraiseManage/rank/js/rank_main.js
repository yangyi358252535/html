$(document).ready(function() {
	//初始化全局ID
	dataId=[];
	var data={
	};
	$("input").off("blur");
	// 创建后就可以一直使用
	$("input").on("blur", function() {// .unbind("change")
		$(this).css("background", "white");
		hideInformation();
	});
	forSearchCondition();
	showMain();
	$("#rank_but").click(function(){
		var year_str=$("#year_str").val();
		var item_str=$("#item_str").val();
		confirmInformation("你确定要进行排名吗？",function(){
			$.ajax({
				data:{'year_str':year_str,'itemid':item_str},
				url : '../appraiseManage/rank/rankProcess.action',
				type : 'POST',
				async : false,
				beforeSend:function(){
					showLoading();
				},
				success : function(data) {
					hideLoading();
					data={};
					showMain();
					setTimeout('AlertInfo("排名成功")',1800);
				}
			});
		});
	});
	function forSearchCondition(){
		$("#condition1").change(function(){
			$("#input").css("background","white");
			hideInformation();
			$("#input").val("");
			$("#input").prop("disabled",false);
		});
	}
	$('#search_but').click(function(){
		$("#input").css("background","white");
		hideInformation();
		var con1=$('#condition1').val();
		clearSession("/appraiseManage/rank");
		if(con1==0){
			data={};
			showMain();
		}else{
			data={};
			var text=$('#input').val();
			if((con1=="1"&&text=="")){
				$("#input").css("background","#FF77AD");
				$("#input").focus();
				setTimeout('AlertInfo("请您填写相应的信息")',100);
			}else{
				if(text==""){
					text="null";
				}
				data['flagString']=con1;
				data['information']=text;
				showMain();
			}
		}
		//清空全局Ids
		dataId = [];
	});
	function clearError(id){
		$("#"+id).css("background","white");
	}
	function showMain(){
		clearError('input');
		toDateList('rank_main','rankbar','ranklist','/appraiseManage/rank',data,'id',generalIdList);
		showAttribuate1('tabs');
	}
});