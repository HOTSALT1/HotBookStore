$('#btn-date1').click(function() {
	var date = new Date();
	$('#endDate').val(date.yyyymmdd());
	
	date.setDate(date.getDate() - 7);
	$('#startDate').val(date.yyyymmdd());
})

$('.btn-date').click(function() {
	let monthDiff = $(this).attr('id');
	
	var date = new Date();
	$('#endDate').val(date.yyyymmdd());
	
	date.setMonth(date.getMonth() - monthDiff);
	$('#startDate').val(date.yyyymmdd());
})

// 현재 날짜값을 yyyy-mm-dd 형식으로 변환해주는 함수
Date.prototype.yyyymmdd = function() {
    var yyyy = this.getFullYear().toString();
    var mm = (this.getMonth() + 1).toString();
    var dd = this.getDate().toString();
     return  yyyy + "-" + (mm[1] ? mm : "0" + mm[0]) + "-" + (dd[1] ? dd : "0" + dd[0]);
}