$(function(){
	$(".pagination a").live("click", function(){
		$.get(this.href, null, null, "script"); // execute JS returned by click event
		return false; // prevent HTML GET request from being triggered
	});
});