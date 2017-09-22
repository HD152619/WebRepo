<!-- 1. Directive Tag -->
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>First JSP</title>
</head>

<body>
<%-- 2. JSP Reference Tag --%>
<%-- 3. Declaration Tag --%>
<%! private static final String DEFAULT_NAME = "GUEST"; %>						<!-- Necessary Code -->
<%-- 4. Scriptlet Tag --%>
<%
	// Write Java Code
	String name = request.getParameter("name");
	if(name == null) name = DEFAULT_NAME;
	// out.println("<h1>Hello, " + name + "</h1>");
%>
<%-- 5. Expression Tag --%>
<h1>Hello, <%=name %></h1>
</body>
</html>