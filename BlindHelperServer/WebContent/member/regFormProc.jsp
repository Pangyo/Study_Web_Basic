<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<jsp:useBean id="dao" class="my.member.MemberDao" />
<jsp:useBean id="vo" class="my.member.MemberVo" />
<jsp:setProperty property="*" name="vo" />
<%
	int rst = 0;
	request.setCharacterEncoding("euc-kr");
	rst = dao.insertMember(vo);
	if (rst > 0) {
%>
<script type="text/javascript">
	location.href="regSuccess.jsp";
</script>
<%
	} else {
%>
<script type="text/javascript">
	alert("회원가입 실패");
	history.go(-1);
</script>
<%
	}
%>
<%
	String address = (String) request.getParameter("address");
	String name = (String) request.getParameter("name");
%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
</head>
<body>
	<%=address%><br>
	<%=name%>
</body>
</html>