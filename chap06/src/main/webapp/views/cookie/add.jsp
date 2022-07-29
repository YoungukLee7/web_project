<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	String name = request.getParameter("name");
	String value = request.getParameter("value");
	String maxAge = request.getParameter("max-age");
	
	// # 서버측에서 쿠키 만들기
	
	// 1. 새 투키 인스턴스를 생성한다
	Cookie cookie = new Cookie(name,value);
	
	// 2. 쿠키 인스턴스를 원하는 대로 설정한다
	
	try {
		cookie.setMaxAge(Integer.parseInt(maxAge));
	} catch (NumberFormatException e) {
		System.out.println("cookie max-age == session");
	}
	// 쿠키 유효시간 설정 (초), 0으로 설정 시 해당 쿠키를 웹 브라우저에서 삭제한다
	// 설정하지 않으면 웹 브라우저 종료시 삭제 (Session)
	
	// cookie.setPath(); // 이 쿠키를 사용할 수 있는 경로를 지정
						 // 지정하지 않으면 현재 경로로 설정됨
	
	cookie.setHttpOnly(true); // 쿠키로 http 이외의 프로그래밍 언어를 보낼 수 없도록 설정 (보안)
	
	// cookie.setComment("쿠키에 대한 설명을 추가할 수 있다");
	
	// 3. 해당 쿠키를 응답에 추가해 놓는다
	response.addCookie(cookie);
	
	response.sendRedirect(request.getContextPath() + "/views/cookie/index.jsp");
%>