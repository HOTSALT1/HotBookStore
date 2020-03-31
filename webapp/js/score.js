$(function() {
	let score = $('#score').val();
	
	var $star = $('#star');

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

let new_score = 0;
$('#writeStar li').hover(function() {
	let idx = $(this).attr('id')
//	star(idx)
}, function() {
	star(new_score)
}
);

$('#writeStar li').click(function() {
	let idx = $(this).attr('id')
	new_score = idx * 2;
})

function star(s){
	let idx = $(this).attr('id')
	$(this).removeClass('off')
	$(this).addClass('on')
	
	let $score = $('#writeScore');
	var $star = $('#writeStar');

	for(let i = 0; i < 5; i++){
		if(i <= s/2){
			$star.find('li:eq(' + i + ')').removeClass('on').removeClass('off');
			$star.find('li:eq(' + i + ')').addClass('on');
		}else{
			$star.find('li:eq(' + i + ')').removeClass('on').removeClass('off');
			$star.find('li:eq(' + i + ')').addClass('off');
		}
	}
}