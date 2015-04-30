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
	$("#add_but").click(function() {
		showLoading();
		$("#award_main").load("../systemManage/award/toAdd.action", function() {
			hideLoading();
			$("#awardbar").hide();
			removeAttribuate1("tabs");
			validate("addForm","add");
			$("#add_b111").click(function(){
				$("#addForm").submit();
			});
			$("h3 a").click(function() {
				data={};
				showMain();
			});
			$('#cancel_b').click(function() { 
				data={};
				showMain();
			});
		});
		//初始化全局ID
		dataId=[];
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
		clearSession("/systemManage/award");
		if(con1==0){
			data={};
			showMain();
		}else{
			data={};
			var text=$('#input').val();
			if((con1=="1"&&text=="")||(con1=="2"&&text=="")){
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
		hideInformation('effect');
	}
	$("#edit_but").click(function(){
		loadAllIds("/systemManage/award");
		if(dataId.length==0||dataId=="null"){
			showAlertDialog("请选择要修改的奖项信息");
		}else if(dataId.length>1){
			showAlertDialog("请您选择单条奖项信息");
		}else{
//			var id=dataId[0];
			showLoading();
			$("#award_main").load("../systemManage/award/toModify.action",{'awards.id':dataId[0]},function(){
				$("#userTitle").html("编辑奖项信息");
				hideLoading();
				$("#awardbar").hide();
				removeAttribuate1("tabs");
				$('#edit_b').click(function() {
					$('#editForm').submit();
				});
				validate("editForm","modify");
				$("h3 a").click(function() {
					data={};
					showMain();
				});
				$('#cancel_b').click(function() {
					data={};
					showMain();
				});
			});
		}
		//清空全局Ids
		dataId = [];
	});
	function validate(formId,type){
		$("#"+formId).validate({						  
			rules: {
				'awards.name': {
					required: true
				},
				'awards.integration':{
					required: true,
					digits:true,
					gt:0
				}
			},
			//设置提示信息
			messages:{
				'awards.name': {
					required: "请填写奖项名称"
				},
				'awards.integration':{
					required: "请填写奖项积分值",
					digits:"请填写正确格式的奖项积分值",
					gt:"请填写正确格式的奖项积分值"
				}
			},
			//指定错误信息位置
			errorPlacement: function (error, element) { 
				element.parent().find("span:last").append(error);
			},
			//设置验证触发事件
			focusInvalid: true,   
			submitHandler: function(form) {
				if(type=="add"){
					confirmInformation("你确定要添加奖项吗？",function(){
						// 提交表单<br>
						var option = {
								data:{},
								beforeSubmit : function() {
									showLoading();
									return true;
								},
								success : function() {
									data={};
									showMain();
									setTimeout('AlertInfo("奖项添加成功")',1800);
								},error : function (jqXHR, textStatus, errorThrown) {
									showAlertDialog(errorThrown + " " + textStatus);
								}
							};
						$('#'+formId).ajaxSubmit(option); 
					});
				}else{
					confirmInformation("你确定要修改奖项信息吗？",function(){
						// 提交表单<br>
						var option = {
								data:{},
								beforeSubmit : function() {
									showLoading();
									return true;
								},
								success : function() {
									data={};
									showMain();
									setTimeout('AlertInfo("奖项修改成功")',1800);
								},error : function (jqXHR, textStatus, errorThrown) {
									showAlertDialog(errorThrown + " " + textStatus);
								}
							};
						$('#'+formId).ajaxSubmit(option); 
					});
				}
			}
		});
	}
	function showMain(){
		clearError('input');
		toDateList('award_main','awardbar','awardlist','/systemManage/award',data,'id',generalIdList);
		showAttribuate1('tabs');
	}
});