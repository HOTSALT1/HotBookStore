$(function() {
	let score = $('#score').val(); //0~10
	
	var $star = $('#star');//ul

	let c;
	for(let i = 0; i < 5; i++){
		if(i <= score/2){
			$star.find('li:eq(' + i + ')>i').removeClass('zmdi-star-outline');
			$star.find('li:eq(' + i + ')>i').addClass('zmdi-star');
		}else{
			$star.find('li:eq(' + i + ')>i').removeClass('zmdi-star');
			$star.find('li:eq(' + i + ')>i').addClass('zmdi-star-outline');
		}
		
	}
	
});
$(function() {
	let review_score = $('#review_score').val(); //0~10
	
	var $review_star = $('#review_star');//ul

	let c;
	for(let i = 0; i < 5; i++){
		if(i <= review_score/2){
			$review_star.find('li:eq(' + i + ')>i').removeClass('zmdi-star-outline');
			$review_star.find('li:eq(' + i + ')>i').addClass('zmdi-star');
		}else{
			$review_star.find('li:eq(' + i + ')>i').removeClass('zmdi-star');
			$review_star.find('li:eq(' + i + ')>i').addClass('zmdi-star-outline');
		}
		
	}
	
});

let new_score = 0;
$('#writeStar li').hover(function() {
	if(chk){
		return false;
	}
	let idx = $(this).attr('id')
	star(idx*2)
}, function() {
	star(new_score)
}
);
let chk;
$('#writeStar li').click(function() {
	let idx = $(this).attr('id')
	new_score = idx * 2;
	chk = true;
	$('#score').val(new_score);
})

function star(s){
	let idx = $(this).attr('id')
//	$(this).removeClass('off')
//	$(this).addClass('on')
	
	let $score = $('#writeScore');
	var $star = $('#writeStar');

	for(let i = 0; i < 5; i++){
		if(i <= (s/2)-1){
			$star.find('li:eq(' + i + ')').removeClass('on').removeClass('off');
			$star.find('li:eq(' + i + ')').addClass('on').css('font-size','18px');
		}else{
			$star.find('li:eq(' + i + ')').removeClass('on').removeClass('off');
			$star.find('li:eq(' + i + ')').addClass('off').css('font-size','18px');
		}
	}
}