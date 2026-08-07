<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%
	String name = request.getParameter("name");
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String call1 = request.getParameter("call1");
	String call2 = request.getParameter("call2");
	String call3 = request.getParameter("call3");
	String tell = call1 + "-" + call2 + "-" + call3;
	String email1 = request.getParameter("email1");
	String email2 = request.getParameter("email2");
	String emailall = email1 + "@" + email2;  
	
 %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table border=1 width=300>
		<tr>
		<!-- <%= %> 라는게 있는데 표현식이라고 한다 out.print();와 동일 -->
			<td>이름</td>
			<td><%=name%></td>
		</tr>
		<tr>
			<td>아이디</td>
			<td><%=id%></td>
		</tr>
		<tr>
			<td>비번</td>
			<td><%=pw%></td>
		</tr>
		<tr>
			<td>전화번호</td>
			<td><%=tell%></td>
		</tr>
		<tr>
			<td>이메일</td>
			<td><%=emailall%></td>
		</tr>
		
	</table>
</body>
</html>