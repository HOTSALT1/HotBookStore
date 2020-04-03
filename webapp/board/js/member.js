$('#logout').click(function(){
	$.ajax({
		type : 'get',
		url : '/hotSalt/logout',
		success : function(){
			alert("로그아웃");
			location.href="/hotSalt/";
		}
	});
})