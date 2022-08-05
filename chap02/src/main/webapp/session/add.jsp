<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	String key = request.getParameter("key");
	String value = request.getParameter("value");
	

	if (key == null || value == null) {
		response.sendRedirect("./index.jsp");
	} else {
		session.setAttribute(key, value);
		response.sendRedirect("./index.jsp");
	}
	
	
%>