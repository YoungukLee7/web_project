<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ include file="/WEB-INF/views/jspf/taglib.jspf" %>    
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
		
		<c:set var="x" value="10" scope="page"/>
		<c:set var="x" value="10" scope="request"/>
		<c:set var="x" value="10" scope="session"/>
		<c:set var="x" value="10" scope="application"/>
		
		<p>x : ${x }</p>
		
		<!-- 이것은 파일을 통으로 가져오는 것이다 -->
		<%@ include file="/WEB-INF/views/include1.jsp" %>
		
		<!-- 이 페이지에서 req로 아래에 보내면 아래에서 resp로 다시 보내준다 -->
		<jsp:include page="/WEB-INF/views/include2.jsp" />
		
		
		<h3># include</h3>
		
		
		<dl>
			<dt>include directive</dt>
			<dd>해당 파일을 그대로 현재 파일에 포함시키는 방식</dd>
			<dt>jsp include</dt>
			<dd>해당 파일을 실행시킨 결과를 현재 파일에 포함시키는 방식</dd>
		</dl>

</body>
</html>