<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	
	<p>Tree comments</p>
	<ul>
		<c:forEach var="X" items="${comments}">
			<c:set var="node" value="${X}" scope="request" />
			<jsp:include page="comments.jsp" />
		</c:forEach>
	</ul>
</body>
</html>