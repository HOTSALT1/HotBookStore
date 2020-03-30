$(function() {
		$('#agreementUnit1').load('main/agreement1.html')
		$('#agreementUnit2').load('main/agreement2.html')
		$('#card-signup_complete').load('signup_complete.jsp');
	});
	/* 유효성검사  */
	let checkAll = false;
	$('.radioImgAll, .radioBtn:eq(0) span').click(function() {
		let src = '';
		if (checkAll) {
			src = "img/radiobutton_gray.png"
			$('.next-button').css("background-color", "#a7a4a4");
			check1 = false;
			check2 = false;
		} else {
			src = "img/radiobutton_pink.png"
			$('.next-button').css("background-color", "#f56a6a");
			check1 = true;
			check2 = true;
		}
		$('img[class^="radioImg"]').attr("src", src);
		checkAll = !checkAll;
	});

	let check1 = false;
	$('.radioImgCheck1, .radioBtn:eq(1) span').click(function() {
		let src = '';
		if (check1) {
			src = "img/radiobutton_gray.png"
			$('.radioImgAll').attr("src", src);
			$('.next-button').css("background-color", "#a7a4a4");
			checkAll = false;
		} else {
			src = "img/radiobutton_pink.png"
			if (check2) {
				checkAll = true;
				$('.radioImgAll').attr("src", src);
				$('.next-button').css("background-color", "#f56a6a");
			}
		}
		$('.radioImgCheck1').attr("src", src);
		check1 = !check1;
	});

	let check2 = false;
	$('.radioImgCheck2, .radioBtn:eq(2) span').click(function() {
		let src = '';
		if (check2) {
			src = "img/radiobutton_gray.png"
			$('.radioImgAll').attr("src", src);
			$('.next-button').css("background-color", "#a7a4a4");
			checkAll = false;
		} else {
			src = "img/radiobutton_pink.png"
			if (check1) {
				checkAll = true;
				$('.radioImgAll').attr("src", src);
				$('.next-button').css("background-color", "#f56a6a");
			}
		}
		$('.radioImgCheck2').attr("src", src);
		check2 = !check2;
	});
	/* 카드css */
	$('.next-button').click(function() {
		if (checkAll) {

			$('#card-signup_agreement').hide();
			/* $('#card-signup_writeForm').css('display','block'); */
			$('#card-signup_writeForm').fadeIn(300)
		} else if (check1 == false) {
			alert("개인정보 수집 및 이용 동의를 체크 해주세요.");
		} else if (check2 == false) {
			alert("서비스 이용 약관 동의를 체크해주세요.");
		}
	});

	function rgb2hex(rgb) {
		if (rgb.search("rgb") == -1) {
			return rgb;
		} else {
			rgb = rgb.match(/^rgba?\((\d+),\s*(\d+),\s*(\d+)(?:,\s*(\d+))?\)$/);
			function hex(x) {
				return ("0" + parseInt(x).toString(16)).slice(-2);
			}
			return "#" + hex(rgb[1]) + hex(rgb[2]) + hex(rgb[3]);
		}
	}