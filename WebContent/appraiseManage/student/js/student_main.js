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
		$("#student_main").load("../appraiseManage/student/toAdd.action", function() {
			hideLoading();
			$("#studentbar").hide();
			removeAttribuate1("tabs");
			validate("addForm","add");
			$("#add_b111").click(function(){
				$("#addForm").submit();
			});
			$('#cancel_b').click(function() { 
				data={};
				showMain();
			});
		});
		//初始化全局ID
		dataId=[];
	});
	$("#award_but").click(function(){
		loadAllIds("/appraiseManage/student");
		if(dataId.length==0||dataId=="null"){
			showAlertDialog("请选择要录入奖项绩的学生信息");
		}else if(dataId.length>1){
			showAlertDialog("请您选择单条学生信息");
		}else{
			var year_str=$("#year_str").val();
			showLoading();
			$("#student_main").load("../appraiseManage/student/toAward.action",{'student.id':dataId[0],'year_str':year_str},function(){
				hideLoading();
				$("#userTitle").html("录入学生奖项");
				$("#studentbar").hide();
				removeAttribuate1("tabs");
				$('#cancel_b').click(function() {
					data={};
					showMain();
				});
				$("#choise_award_but").click(function(){
					DivWindowOpen(750, 440, '请选奖项信息', '../appraiseManage/student/choiceAward.jsp');
				});
				$("#add_b").click(function(){
					var size=$("#awardDetail tbody").find("tr").size();
					if(size<=0){
						showInformation("请选择要添加的奖项");
					}else{
						confirmInformation("你确定要添加奖项信息吗？",function(){
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
										setTimeout('showInformation("奖项添加成功")',1800);
									},error : function (jqXHR, textStatus, errorThrown) {
										showAlertDialog(errorThrown + " " + textStatus);
									}
								};
							$('#addForm').ajaxSubmit(option); 
						});
					}
				});
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
			});
		}
		//清空全局Ids
		dataId = [];
	});
	$("#input_but").click(function(){
		loadAllIds("/appraiseManage/student");
		if(dataId.length==0||dataId=="null"){
			showAlertDialog("请选择要录入成绩的学生信息");
		}else if(dataId.length>1){
			showAlertDialog("请您选择单条学生信息");
		}else{
			var year_str=$("#year_str").val();
			showLoading();
			$("#student_main").load("../appraiseManage/student/toInput.action",{'student.id':dataId[0],'year_str':year_str},function(){
				$("#userTitle").html("录入学生成绩");
				hideLoading();
				greneralIds();
				$("#studentbar").hide();
				removeAttribuate1("tabs");
				$('#edit_b').click(function() {
					$("input").off("blur");
					// 创建后就可以一直使用
					$("input").on("blur", function() {// .unbind("change")
						$(this).css("background", "white");
						hideInformation();
					});
					var result=true;
					var score=null;
					for(var i=0;i<20;i++){
						score=$("#score"+i).val();
						score=score.trim();
						if (score == "") {
							$("#score" + i).css("background", "#FF77AD");
							showInformation("请填写入相应的科目得分或0");
							$("#score" + i).focus();
							result = false;
							break;
						}else if (!(/^-?(?:\d+|\d{1,3}(?:,\d{3})+)(?:\.\d+)?$/.test(score))|| isNaN(score)) {
							$("#score" + i).css("background", "#FF77AD");
							showInformation("请您填写正确的格式");
							$("#score" + i).focus();
							result = false;
							break;
						} else if (score <0||score >100) {
							$("#score" + i).css("background", "#FF77AD");
							showInformation("请您正确填写入分数");
							$("#score" + i).focus();
							result = false;
							break;
						} else {
							$("#score" + i).css("background", "white");//:"^[1-9]/d*$",     
						}
					}
					if(result){
						confirmInformation("你确定要提交学生成绩吗？",function(){
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
										setTimeout('showInformation("成绩录入成功")',1800);
									},error : function (jqXHR, textStatus, errorThrown) {
										showAlertDialog(errorThrown + " " + textStatus);
									}
								};
							$('#addForm').ajaxSubmit(option); 
						});
					}
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
		clearSession("/appraiseManage/student");
		if(con1==0){
			data={};
			showMain();
		}else{
			data={};
			var text=$('#input').val();
			if((con1=="1"&&text=="")||(con1=="2"&&text=="")){
				$("#input").css("background","#FF77AD");
				$("#input").focus();
				setTimeout('showInformation("请您填写相应的信息")',100);
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
		loadAllIds("/appraiseManage/student");
		if(dataId.length==0||dataId=="null"){
			showAlertDialog("请选择要修改的学生信息");
		}else if(dataId.length>1){
			showAlertDialog("请您选择单条学生信息");
		}else{
			showLoading();
			$("#student_main").load("../appraiseManage/student/toModify.action",{'student.id':dataId[0]},function(){
				$("#userTitle").html("编辑学生信息");
				hideLoading();
				$("#studentbar").hide();
				removeAttribuate1("tabs");
				$('#edit_b').click(function() {
					$('#editForm').submit();
				});
				validate("editForm","modify");
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
				'student.name': {
					required: true
				},
				'student.tel':{
					required: true,
					isMobile:true
				}
			},
			//设置提示信息
			messages:{
				'student.name': {
					required: "请输入学生姓名"
				},
				'student.tel':{
					required: "请输入联系电话",
					isMobile:"请填写正确的联系电话格式"
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
					confirmInformation("你确定要添加学生吗？",function(){
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
									setTimeout('AlertInfo("学生添加成功")',1800);
								},error : function (jqXHR, textStatus, errorThrown) {
									showAlertDialog(errorThrown + " " + textStatus);
								}
							};
						$('#'+formId).ajaxSubmit(option); 
					});
				}else{
					confirmInformation("你确定要修改学生信息吗？",function(){
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
									setTimeout('AlertInfo("学生修改成功")',1800);
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
	function greneralIds(){
		var i=0;
		$("#scoreList tbody").find("td").find("input").each(function(){
			$(this).prop("id","score"+i);
			i++;
		});
	}
	function showMain(){
		clearError('input');
		toDateList('student_main','studentbar','studentlist','/appraiseManage/student',data,'id',generalIdList);
		showAttribuate1('tabs');
		//清空全局Ids
		dataId = [];
	}
});