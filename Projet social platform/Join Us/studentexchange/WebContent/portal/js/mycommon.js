/*
	add by zhiyong
*/

jQuery.noConflict();

jQuery(document).ready(function(){
	
	jQuery("#gkr-unlogin-more-nav").hover(function(){jQuery("#gkr-umn-pop").slideDown(300);},function(){jQuery("#gkr-umn-pop").slideUp(300)})
	jQuery("#gkr-unlogin-more-nav2").hover(function(){jQuery("#gkr-umn-pop2").slideDown(300);},function(){jQuery("#gkr-umn-pop2").slideUp(300)})
	
	
	jQuery("#jointype1").click(function() {
		jQuery("#activitynumber_dt").show();
		jQuery("#activitynumber_dd").show();
	})
	jQuery("#jointype2").click(function() {
		jQuery("#activitynumber_dt").hide();
		jQuery("#activitynumber_dd").hide();
	})
	jQuery(".tmptypeid").click(function() {
		var tmpvalue = jQuery(this).val();
		var tmptxt = jQuery(this).text();
		jQuery("#typeid").empty();
		var tmp = '<option value="'+tmpvalue+'">'+tmptxt+'</option>';
		jQuery("#typeid").append(tmp);
	})
	
	jQuery("img").each(function() {
		var img_src = '';
		img_src = jQuery(this).attr("src");
		if(img_src.indexOf('data/attachment') > -1) {
			jQuery(this).attr("src",'http://www.xuesheng.fr/'+img_src)
		}
	})
}) 



