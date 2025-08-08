<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>INDEX - 애플리케이션 시작페이지</h2>
	<hr>
	<ul>
		<li><a href="test.jsp">test.jsp 로 요청 보내기</a></li>
		<li><a href="Hello">서블릿으로 요청 보내기</a></li>
		<li><a href="hello">서블릿으로 요청 보내기</a></li>
		<li><a href="request.jsp">request.jsp  - request 객체 속성 가져오기</a></li>
		<li><a href="request.jsp?name=kim&hobby=music">request.jsp  - request 객체로 파라미터 보내기</a></li>
		<!-- URL 에 추가된 ?name=kim 은 쿼리문자열이고 request 객체의 파라미터로 저장됩니다. -->
	</ul>
</body>
</html>