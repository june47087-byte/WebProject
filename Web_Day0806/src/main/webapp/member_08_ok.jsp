<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%
 
 	request.setCharacterEncoding("UTF-8");
	String name = request.getParameter("name");
	String gender =request.getParameter("gender");
	// 배열로 넘어오는건 이렇게 checkbox는 같은 이름에 여러개가 넘어오니까 
	String hobby[] = request.getParameterValues("hobby");
	// 배열은 데이터 베이스에 못 넣음. 그래서 문자열을 결합시켜서 보관해야함
	String str = hobby[0];
	for(int i = 1; i< hobby.length; i++) {
		str += "," + hobby[i];
	}
	String job = request.getParameter("job");
	String intro = request.getParameter("intro");

	out.print("취미 : " + str);
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
			<td>이름</td>
			<td><%=name%></td>
		</tr>
		<tr>
			<td>성별</td>
			<td><%=gender%></td>
		</tr>
		<tr>
			<td>취미</td>
			<td><%=str%></td>
		</tr>
		<tr>
			<td>직업</td>
			<td><%=job%></td>
		</tr>
		<tr>
			<td>소개</td>
			<td><%=intro%></td>
		</tr>
		
	</table>
</body>
</html>