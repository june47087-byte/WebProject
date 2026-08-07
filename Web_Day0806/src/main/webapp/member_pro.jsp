<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// %를 스크립트릿이라 한다.
	// 자바 코드가 들어가는 공간이다.
	// 요청 처리: request(내장객체) : getParameter(), getParameterValues()
	// 응답 : response sendRedirect() //다 문자열로 넘오옴
	// 이런식으로 넘어오면 dto에 넣어준다.	
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
	// 자바가 아니라 자동 줄바꿈 아님 아래의 이건 넘어왔는지 확인하는것
	out.print("이름 : " + name + "<br>");
	out.print("이름 : " + id + "<br>");
	out.print("이름 : " + pw + "<br>");
	out.print("이름 : " + tell + "<br>");
	out.print("이메일 : " + emailall + "<br>");
	// jsp만 이용하는방법도 있지만 servlet + java를 이용하는 방법도 있다.
%>


