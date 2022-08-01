<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>글 쓰기</title>
</head>
<body>

	<form action="./AddBulletin" method="POST">
		글 목록 추가 : <input type="text" name="write_list"/> <br> 
		글 상세 내용 추가 : <input type="text" name="write_content" /> <br>
		<input type="submit" value="글 쓰기" />
	</form>

</body>
</html>