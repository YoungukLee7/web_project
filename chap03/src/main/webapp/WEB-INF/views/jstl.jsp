<%@page import="org.apache.jasper.tagplugins.jstl.core.If"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
		<h3># 외부 라이브러리 추가하는 순서</h3>
		
		<ol>
			<li>원하는 라이브러리 다운로드</li>
			<li>해당 프로젝트 우클릭 -> Build Path</li>
			<li>Confugure Build Path..</li>
			<li>Module Path에 Add External JARS</li>
			<li>원하는 라이브러리 찾아서 등록</li>
			<li>해당 프로젝트 우클릭 -> Properties</li>
			<li>Deployment Assenbly -> Add로 등록</li>
		</ol>

		<h3># JSTL (JSP Standard Tag Library)</h3>
		
		<ul>
			<li>JSP 파일에서 자바 코드를 손쉽게 사용하기 위한 커스텀 태그 라이브러리</li>
			<li>자바의 몇 가지 핵심 기능을 태그 형태로 사용할 수 있다</li>
			<li>주로 화면을 만들 때 유용한 기능들이 포함되어 있다</li>
		</ul>
		
		<h3># JSTL Core</h3>
		
		<p>자바의 주요 핵심 문법들을 사용할 수 있는 커스텀 태그 라이브러리</p>
		
		<dl>
			<dt>c:set</dt>
			<dd>setAttribute를 편하게 사용할 수 있다</dd>
			
			<dt>c:if</dt>
			<dd>자바의 if문을 좀 더 편리하게 사용할 수 있다. (else, else if는 없다)</dd>
			
			<dt>c:choose, c:when, c:otherwise</dt>
			<dd>if, else if, else처럼 사용할 수 있는 조건문</dd>
			
			<dt>c:forEach</dt>
			<dd>순차적인 반복 처리</dd>
			
			<dt>c:forTokens</dt>
			<dd>하나의 긴 데이터를 자르면서 반복 처리</dd>
			
			<dt>c:url</dt>
			<dd>Context Path를 포함한 URL을 자동으로 생성</dd>
		</dl>
		
		<hr />
		
		<!-- 
			- 번거로운 setAttribute를 편하게 사용할 수 있다 
			- var: 어트리뷰트의 이름
			- value: 어트리뷰트의 값
			- scope: page/request/session/application (기본값: page)
		-->
		<c:set var="fruit" value="apple" scope="request"/>
		<c:set var="car" value="myCar"/>
		
		<%
			request.setAttribute("fruit", "banana");
		%>
		
		${fruit }
		page.car: ${pageScope.car }
		request.car: ${requestScope.car }
		
		
		<hr>
		
		<c:set var="animal" value="사슴"/>
		
		<c:if test="${animal != null }">
			<p>animal attribute에 들어있던 값은 ${animal }입니다.</p>
		</c:if>
		
		<c:set var="tea" value="녹차" scope="application"/>
		
		<c:if test="${tea != null}">
			<p>${tea }입니다</p>
		</c:if>
		
		<!-- 위에것은 원래 이 모양이다  -->
		<%
			if (pageContext.getAttribute("tea") != null 
				&& request.getAttribute("tea") != null
				&& session.getAttribute("tea") != null
				&& application.getAttribute("tea") != null) { %>
				<p>${tea }입니다</p>
			<% } %>
		
		<hr>
		
		<c:set var="num" value="55"/>
		
		<c:choose>
				<c:when test="${num > 100 || num < 0 }">
					유효하지 않은 점수
				</c:when>
				<c:when test="${num > 90}">
					A등급 입니다.
				</c:when>
				<c:when test="${num > 80}">
					B등급 입니다.
				</c:when>
				<c:when test="${num > 70}">
					C등급 입니다.
				</c:when>
				<c:otherwise>
					F등급 입니다. (else)
				</c:otherwise>
				
		</c:choose>
		
		<hr>
		
		<!-- 
			forEach문의 varStatus
			
			- status.first : 첫 번째 반복일 때 true	
			- status.last : 마지막 반복일 때 true	
			- status.index: 인덱스 (현재 i값)
			- status.count: 개수 (1부터 시작)
			- status.begin: 시작 했던 값
			- status.end : 마지막 값
		 -->
		
		<c:forEach begin="55" end="80" var="i" varStatus="status">
			<c:choose> 
				<c:when test="${status.first }">
				<div id="div${i }" style="color: red;" >${i }번째 div입니다.</div>
				</c:when>
				<c:when test="${status.last }">
				<div id="div${i }" style="color: green;" >${i }번째 div입니다.</div>
				</c:when>
				<c:when test="${status.count % 2 == 1 }">
				<div id="div${i }" style="color: blue;" >${i }번째 div입니다.</div>
				</c:when>
				<c:otherwise>
					<div id="div${i }">${i }번째 div입니다.</div>
				</c:otherwise>
			</c:choose>
		</c:forEach>
		
		<hr>
		
		<!-- items에 iterable(순서대로 꺼낼 수 있는)객체 넣어 사용하기 -->
		
		<%
			// c:set으로 모든 자바 문법을 사용할 수 있는 것은 아니다...
			String[] drinks = {"콜라", "사이다", "환타", "미린다", "요구르트"};
			request.setAttribute("drinks", drinks);
		%>
		
		<!-- Array, List, Set 등... -->
		<c:forEach items="${drinks }" var="drink">
			<div id="${drink }">${drink }</div>
		</c:forEach>
		
		<hr>
		                                       <!-- delims는 여러개 사용 가능 -->
		<c:forTokens items="/milk,bread/fish,cake/beer/" delims="/," var="food">
			<li id="${food }">${food }</li>
		</c:forTokens>
		
		
		<hr>
		
		<!-- c:url로 간편하게 url 생성하기 -->
		
		<p><c:url value="/main/test"></c:url></p>
		
		<p><%=request.getContextPath() %>/main/test</p>
		
		<p>
			<c:url value="/main/test">
				<c:param name="age" value="10"/>
				<c:param name="math" value="95"/>
			</c:url>
		</p>
		
		<c:url value="/main/test" var="myURL" scope="page">
				<c:param name="age" value="10"/>
				<c:param name="math" value="95"/>
		</c:url>
		
		<a href="${myURL }">누르세요!</a>
		
		
		
		
		
		
		
		
		
		
		
		
		
		
</body>
</html>