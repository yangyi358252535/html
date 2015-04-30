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
	function forSearchCondition(){
		$("#condition2").empty();
		$("#condition1").change(function(){
			$("#input").css("background","white");
			hideInformation();
			var d=$(this).val();
			if(d==2){
				clearError('condition1');
				$("#condition2").empty();
				$("#input").val("");
				$("#condition2").append("<option value='4'>线性代数</option>");
				$("#condition2").append("<option value='5'>离散数学</option>");
				$("#condition2").append("<option value='6'>操作系统</option>");
				$("#condition2").append("<option value='7'>java课程设计</option>");
				$("#condition2").append("<option value='8'>大学英语</option>");
				$("#condition2").append("<option value='9'>数据库原理</option>");
				$("#condition2").append("<option value='10'>软件工程</option>");
				$("#condition2").append("<option value='11'>数据结构</option>");
				$("#condition2").append("<option value='12'>计算机科学与技术</option>");
				$("#condition2").append("<option value='13'>计算机组成</option>");
				$("#input").prop("disabled",true);
				$("#condition2").prop("disabled",false);
			}else if(d==1){
				clearError('condition1');
				$("#condition2").empty();
				$("#input").val("");
				$("#condition2").append("<option value='2015'>2015年</option>");
				$("#condition2").append("<option value='2016'>2016年</option>");
				$("#condition2").append("<option value='2017'>2017年</option>");
				$("#condition2").append("<option value='2018'>2018年</option>");
				$("#condition2").append("<option value='2019'>2019年</option>");
				$("#input").prop("disabled",true);
				$("#condition2").prop("disabled",false);
			}else if(d==3){
				clearError('condition1');
				$("#condition2").empty();
				$("#input").val("");
				$("#condition2").append("<option value='111'>上半学期</option>");
				$("#condition2").append("<option value='222'>下半学期</option>");
				$("#input").prop("disabled",true);
				$("#condition2").prop("disabled",false);
			}else{
				$("#input").val("");
				$("#condition2").empty();
				$("#input").prop("disabled",false);
				$("#condition2").prop("disabled",true);
			}
		});
	}
	$('#search_but').click(function(){
		var v=$('#year_str').val();
		$("#input").css("background","white");
		hideInformation();
		var con1=$('#condition1').val();
		clearSession("/myinfoManage/score");
		if(con1==0){
			data={"year_str":v};
			showMain();
		}else{
			data={"year_str":v};
			var text=$('#input').val();
			var c2=$('#condition2').val();
			data['flagString']=c2;
			showMain();
		}
		//清空全局Ids
		dataId = [];
	});
	function clearError(id){
		$("#"+id).css("background","white");
	}
	function showMain(){
		clearError('input');
		toDateList('score_main','scorebar','scorelist','/myinfoManage/score',data,'id',generalIdList);
		showAttribuate1('tabs');
	}
});