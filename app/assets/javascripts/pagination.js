$(function(){
	$('div#dinosaurs').on('click', '.pagination a, th a', function(){
		$.get(this.href, null, null, "script");
		return false;
	});
	$('#dinosaur_search input').keyup(function(){
		$.get($("#dinosaur_search").attr("action"), $("#dinosaur_search").serialize(), null, "script");
		return false; 
	});
});