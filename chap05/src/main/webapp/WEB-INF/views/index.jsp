<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Include 활용하기</title>
<!-- 아래에 있는 경로에 있는 모든 링크들을 이곳에서 사용하고 싶을 때 사용 
		(계속 사용하는것을 등록해주면 편하게 불러와 사용 가능)
-->
<%@ include file="/WEB-INF/views/jspf/bootstrap_header.jspf" %>
</head>
<body>

		<h3># include</h3>
		
		<dl>
			<dt>include directive</dt>
			<dd>해당 파일을 그대로 현재 파일에 포함시키는 방식</dd>
			<dt>jsp include</dt>
			<dd>해당 파일을 실행시킨 결과를 현재 파일에 포함시키는 방식</dd>
		</dl>

</body>
</html>