<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<%
	application.setAttribute("fruit", "dragonfruit");
	session.setAttribute("fruit", "peach");
	request.setAttribute("fruit", "orange");
	pageContext.setAttribute("fruit", "pineapple");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>EL</title>
</head>
<body>
		<h3># EL (Expression Language)</h3>
		
		<ul>
			<li>JSP에서 어트리뷰트에 들어있는 값을 편리하게 사용할 수 있는 문법</li>
			<li>
				여러 영역에 같은 name을 가진 어트리뷰트가 존재한다면
				가장 가까운 영역의 값을 먼저 사용한다
				(page > request > session > application)
			</li>
			<li>
				정확하게 접근하고 싶다면 해당 영역 이름을 앞에 명시해야 한다
				(pageScope > requestScope > sessionScope > applicationScope)
			</li>
		</ul>
		
		
		<h3># EL로 어트리뷰트에 저장된 값 출력하기</h3>
		
		<ul>
			<li>과일 그냥 출력: ${fruit }</li>
			<li>페이지 영역: ${pageScope.fruit }</li>
			<li>리퀘스트 영역: ${requestScope.fruit }</li>
			<li>세션 영역: ${sessionScope.fruit }</li>
			<li>어플리케이션 영역: ${applicationScope.fruit }</li>
		</ul>
		
		<h3># EL의 리터럴</h3>
		
		<ul>
			<li>boolean type: ${true }, ${false }</li>
			<li>정수 타입: ${123 }, ${123 * 456 }</li>
			<li>실수 타입: ${123.1234 }, ${123.1234 * 3 }</li>
			<li>문자열 타입: ${'Hello!!' },${"Hello!!" }</li>
		</ul>
		
		${pageScope.fruit == 'pineapple' }
		
		<h3># EL의 연산자</h3>
		
		<dl>
			<dt><b>산술 연산자:</b> +,-,*,/,%,mod</dt>
			<dd>${'${ 15 % 10 } = ' }${15 % 10 }</dd>
			<dd>${'${ 15 mod 10 } = ' }${15 mod 10 }
			
			<dt><b>비교 연산자:</b>
			&lt;,&gt;,&le;,&ge;, ==, !=, <br>
			eq(equal), ne(not equal), lt(less than), gt(greater than), le(less than equal), ge(greater than equal) 
			</dt>
			<dd>
				${'${ 15 eq 15 }' } = ${15 eq 15 } <br>
				${'${ 15 ne 15 }' } = ${15 != 15 } 
			</dd>
			
			<dt>
				<b>논리 연산자: </b> and, or, not, &&, ||, !
			</dt>
			<dd>
				${(friut eq 'pineapple')
				 and (applicationScope.fruit eq 'dragonfruit') },
				 <%pageContext.setAttribute("a", 22); %>
				 
				 ${ a % 2 == 0 && a % 11 == 0 }
			</dd>
			
			<dt>
				<b>삼항 연산자: </b> condition ? yes : no
			</dt>
			
			<dd>
				<% request.setAttribute("apple", 20); %>
				${ apple % 10 == 0 ? '바구니/10' : '바구니/10 + 1' }
			</dd>
		</dl>
		
		
		
		
		
		
		
		
		
		
		
		
		
</body>
</html>