$(function(){
	$('div#dinosaurs').on('click', '.pagination a, .sort-by-option a', function(){
		$.get(this.href, null, null, "script");
		return false;
	});
	$('#dinosaur_search input').keyup(function(){
		$('#loading-gif').show();
		$.get($("#dinosaur_search").attr("action"), $("#dinosaur_search").serialize(), null, "script");
		$('#loading-gif').hide();
		return false;
	});
});