<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%
	String loginId = (String) session.getAttribute("loginId");
	if (loginId == null) {
		request.setAttribute("top", "loginForm.jsp");
		request.setAttribute("bottom", "/board/boardList.jsp");
		request.setAttribute("logIn", null);
	} else {
		request.setAttribute("top", "logoutForm.jsp");
		request.setAttribute("bottom", "/board/boardList.jsp");
		request.setAttribute("logIn", loginId);
	}
	
%>
<jsp:forward page="template.jsp" />