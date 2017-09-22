<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>

<body>
<%
	Integer cnt = (Integer) session.getAttribute("cnt");
	if(cnt == null)
	{
		out.println("First Calling");
		cnt = 0;
	}
	session.setAttribute("cnt", ++cnt);
%>
<h1>cnt : <%= cnt %></h1>															// 세션이 공유되기 때문에서 chrome에서는 누적되고, ie는 다시 최초 호출이다.
</body>
</html>