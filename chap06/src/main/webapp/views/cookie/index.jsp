<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Cookie</title>
</head>
<body>

			<h3># Cookie</h3>
			
			<ul>
				<li>서버측에서 원하는 데이터를 사용자의 웹 브라우저 어딘가에 보관하는 것</li>
				<li>데이터를 key-value 형태로 보관한다</li>
				<li>서버는 원하는 쿠키 데이터를 응답에 실어 보내면 클라이언트가 그것을 보관한 후
					모든 요청에 포함시켜 보낸다</li>
				<li>※ localStorage, SessionStorage는 
					  클라이언트측에서 원하는 데이터를 웹 브라우저에서 보관한다</li>
				<li>쿠키는 map 타입으로 저장된다(name이 같은 것을 쓰고 value를 다르게 하면 기존에 있는 value가 바뀐다.)</li>
			</ul>
			
			<hr>
			
			<form action="<c:url value="/views/cookie/add.jsp" />" method="GET">
				쿠키 이름 : <input type="text" name="name" />
				쿠키 값 : <input type="text" name="value" />
				쿠키 수명 : <input type="number" name="max-age" />
				<input type="submit" value="쿠키 추가하기"/>
			</form>
			
			<hr>
			
			<button id="btn">쿠키 활용하러 가기</button>
			
			<!-- 이곳에다 쓴 것은 이 페이지에서 해석해 줘서 가능하다 (jsp)
			<script>
			const btn = document.getElementById("btn");

				btn.addEventListener('click', (e) => {
					// console.log("hello");
					location.href = '<%=request.getContextPath() %>/abc';
				})
			</script>
			 -->
			 
			<!-- 이곳을 통해서 쓰면 사용자는 사실상 2번 요청한 것이다 -->
			<script src="<c:url value="/assets/variables.js"/>"></script>
			<script src="<c:url value="/assets/myscript.js"/>"></script>
			 
</body>
</html>