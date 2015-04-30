//(function(jQuery) {
//	 var roleTypeCd=null;
//	 /**
//	  * 检查登陆角色信息，并初始化菜单导航栏
//	  */
//	 $.ajax({
//			url : '../sysMaPage/employee/getRoleTypeCd.action',
//			type : 'POST',
//			success : function(data) {
//				roleTypeCd=data.role_type_cd;
//				ilostQ = jQuery.noConflict();
//				ilostQ(document).ready(function() {
//					ilostQ('#sidehome li ul').hide();
//					ilostQ('#sidehome li ul:eq('+roleTypeCd+')').show();
//					ilostQ('#sidehome h3:eq('+roleTypeCd+')').addClass('active');
//					ilostQ('#sidehome h3').click(function() {
//						if (ilostQ(this).next().is(':hidden')) {
//							ilostQ('#sidehome h3').removeClass('active');
//							ilostQ('#sidehome li ul').slideUp();
//							ilostQ(this).next().slideDown();
//							ilostQ(this).addClass('active');
//						}
//					});
//				});
//			}
//		});
//})(jQuery);

(function(jQuery) {
	$(function() {
		$( "#accordion" ).accordion({
				header: "> div > h3",
				heightStyle: "content",
				active: 0
			}).sortable({
				axis: "y",
				handle: "h3",
				stop: function( event, ui ) {
					// IE doesn't register the blur when sorting
					// so trigger focusout handlers to remove .ui-state-focus
					ui.item.children( "h3" ).triggerHandler( "focusout" );
				}
			});
	});
})(jQuery);