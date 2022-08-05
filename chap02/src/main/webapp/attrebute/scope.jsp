<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Attribute Scope</title>
</head>
<body>

	<h3># Attribute Scope</h3>
	
	<p>
		어트리뷰트에는 수명을 설정할 수 있다
	</p>
	
	<dl>
		<dt>page scope</dt>
		<dd>
			해당 서블릿(jsp)에서만 사용할 수 있는 어트리뷰트. 해당 서블릿(.jsp)를 벗어나면 사라진다
		</dd>
		<dt>request scope</dt>
		<dd>
			해당 요청에 응답하여 요청 객체가 사라질 때까지 유지되는 어트리뷰트. 
			(forward, include까지는 유지된다)
		</dd>
		<dt>session scope</dt>
		<dd>
			세션이 만료될때까지 수명이 유지되는 어트리뷰트.
			클라이언트가 웹 서버에 처음 요청을 보내면 서버로부터 세션ID를 발급받는다
			클라이언트는 해당 세션ID를 요청에 항상 포함시켜 보내며 자신의 새션ID를 통해
			개인 락커룸 처럼 세션 객체에 접근할 수 있다.
			해당 클라이언트가 새션id를 보유하고 있는 동안에는
			세션 객체에 저장된 어트리뷰트에 계속해서 접근할 수 있다. 
		</dd>
		<dt>application scope</dt>
		<dd>
			웹 어플리케이션 서버(아파치 톰캣)에 저장해놓는 어트리뷰트
			서버가 꺼지기 전까지 유지된다
		</dd>
	</dl>
	
	<div>
	<a href="/chap02/attrebute/scope">어트리뷰트 수명 테스트1 (서블렛 거쳐가기)</a>
	</div>
	<div>
	<a href="/chap02/attrebute/view/car.jsp">어트리뷰트 수명 테스트2 (바로 확인 페이지로 가기)</a>
	</div>
</body>
</html>