$('ul.wn__pagination li:not(.active) a').click(function() {
	goTo($(this).text());
});

function goTo(pg) {
	let pg2 = 1;
	if(pg){
		pg2 = pg;
	}
	$('#hidden-pg').val(pg2)
	$('#admin_order-list').submit();
}