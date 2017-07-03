<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet"
	href="//fonts.googleapis.com/css?family=Raleway:400,300,600" />
<link rel="stylesheet"
	href="//cdnjs.cloudflare.com/ajax/libs/normalize/4.0.0/normalize.min.css" />
<link rel="stylesheet"
	href="//cdnjs.cloudflare.com/ajax/libs/skeleton/2.0.4/skeleton.min.css" />
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Announcements</title>
</head>
<body>

	<c:forEach var="i" items="${announcement}">
       Name <c:out value="${i.ownerEmail}" />
		<p>
	</c:forEach>

<!--

	<jsp:useBean id="announcement"
		class="ro.netrom.summercamp.summercamp2017.dto.AnnouncementDTO">
		<jsp:setProperty name="announcement" property="ownerFirstName"
			value="${announcement.ownerFirstName}" />
		<jsp:setProperty name="announcement" property="ownerLastName"
			value="Ali" />
		<jsp:setProperty name="announcement" property="ownerPhone" value="10" />
	</jsp:useBean>

	<p>
		Owner First Name:
		<jsp:getProperty name="announcement" property="ownerFirstName" />
	</p>

	<p>
		Owner Last Name:
		<jsp:getProperty name="announcement" property="ownerLastName" />
	</p>

	<p>
		Owner Email:
		<jsp:getProperty name="announcement" property="ownerPhone" />
	</p>
	
	<a href="usersList">json users list</a>
	-->
	
</body>

</html>