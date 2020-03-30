<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>커뮤니티 글쓰기</title>
<style>
body, input, select, textarea {
    color: #7f888f;
    font-size: 13pt;
    font-weight: 400;
    line-height: 1.65;
}
html, body, {
    margin: 0;
    padding: 0;
    border: 0;
    font-size: 100%;
    font: inherit;
    vertical-align: baseline;
}
#boardFormBtn,#resetBtn{
	background-color:#f56a6a;
	color: white;
	border: none;
}

</style>
</head>
<body>
	<form method="post" action="#">
		<table border="0">
			<tr>
				<td>카테고리</td>
				<td><select name="community-category" id="community-category">
						<option value="">- Category -</option>
						<option value="1">북칼럼</option>
						<option value="1">책속의 메아리</option>
						<option value="1">자유로운 글</option>
				</select></td>
			</tr>
			<tr>
				<td width="70" align="center">제목</td>
				<td><input type="text" id="subject" name="subject" size="45">
					<div id="subjectDiv"></div></td>
			</tr>
			<tr>
				<td width="70" align="center">관련 URL</td>
				<td><input type="text" id="subject" name="subject" size="45">
					<div id="subjectDiv"></div></td>
			</tr>
			
			<tr>
				<td align="center" width="70">내용</td>
				<td><div id="content"></div>
				

				</td>
				
			</tr>
			
			
			<tr>
				<td colspan="2" align="center">
				<input type="button" value="글쓰기" id="boardFormBtn"> 
				<input type="reset" value="다시작성" id="resetBtn"></td>
			</tr>
		</table>
	</form>

</body>
<link href="https://cdn.jsdelivr.net/npm/froala-editor@3.0.6/css/froala_editor.pkgd.min.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/froala-editor@3.0.6/js/froala_editor.pkgd.min.js">
</script>
<script type="text/javascript">
var editor = new FroalaEditor('#content')
</script>
</html>