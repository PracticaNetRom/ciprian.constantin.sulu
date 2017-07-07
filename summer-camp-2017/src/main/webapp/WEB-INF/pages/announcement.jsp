<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="/resources/demos/style.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script>
	$(function() {
		$("#datepicker").datepicker();
	});
</script>
<script>
	$(function() {
		$("#datepicker1").datepicker();
	});
</script>
<title>Insert title here</title>
</head>
<body>


	<ul>
		<c:forEach var="announcement" items="${announcements}">
			<li>Id: <c:out value="${announcement.id}" /><br />
			</li>
			<li>Title: <c:out value="${announcement.title}" /><br />
			</li>
			<li>Content: <c:out value="${announcement.content}" /><br />
			</li>
			<li>Location <c:out value="${announcement.location}" /><br />
			</li>
			<li>Confirmation Code: <c:out
					value="${announcement.confirmationCode}" /><br />
			</li>
			<li>Create Date: <c:out value="${announcement.createDate}" /><br />
			</li>
			<li>Owner Email: <c:out value="${announcement.ownerEmail}" /><br />
			</li>
			<li>Owner First Name <c:out
					value="${announcement.ownerFirstName}" /><br />
			</li>
			<li>Owner Last Name: <c:out
					value="${announcement.ownerLastName}" /><br />
			</li>
			<li>Owner Phone: <c:out value="${announcement.ownerPhone}" /><br />
			</li>
			<li>Category Name: <c:out value="${announcement.categoryName}" /><br />
			</li>
			<li>Category Description: <c:out
					value="${announcement.categoryDescription}" /><br />
			</li>
			<br />
			<br />
			<br />
		</c:forEach>
	</ul>





	<form:form action="/announcement/add.do" method="POST"
		modelAttribute="newAnnouncement">
		<table>
			<tr>
				<td>Title :</td>
				<td><form:input type="text" path="title" /></td>
			</tr>
			<tr>
				<td>Content :</td>
				<td><form:input type="text" path="content" /></td>
			</tr>
			<tr>
				<td>Location :</td>
				<td><form:input type="text" path="location" /></td>
			</tr>
			<tr>
				<td>Confirmation code :</td>
				<td><form:input type="text" path="confirmationCode" /></td>
			</tr>
			<tr>
				<td>Date created :</td>
				<td><form:input type="text" id="datepicker" path="createDate" /></td>
			</tr>
			<tr>
				<td>Expiration date :</td>
				<td><form:input type="text" id="datepicker1" path="expireDate" /></td>
			</tr>
			<tr>
				<td>Email :</td>
				<td><form:input type="text" path="ownerEmail" /></td>
			</tr>
			<tr>
				<td>First name :</td>
				<td><form:input type="text" path="ownerFirstName" /></td>
			</tr>
			<tr>
				<td>Last name :</td>
				<td><form:input type="text" path="ownerLastName" /></td>
			</tr>
			<tr>
				<td>Phone :</td>
				<td><form:input type="text" path="ownerPhone" /></td>
			</tr>
			<tr>
				<td>Category :</td>
				<td><form:input type="text" path="categoryName" /></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="ADD"></td>
			</tr>
		</table>
	</form:form>

	<a href="/comments">Comments</a>
	<br />
	<br />
	<br />
	<p>Comments</p>

	<ul>
		<c:forEach var="comment" items="${comments}">
			<li>Name: <c:out value="${comment.name}" /><br />
			</li>
			<li>Parent <c:out value="${comment.parent}" /><br />
			</li>
			<li>Announcement id: <c:out value="${comment.announcementId}" /><br />
			</li>
			<li>Create Date: <c:out value="${comment.createDate}" /><br />
			</li>
			<li>Children: 
			<ul>
			<c:forEach var="children" items="${comment.children}">
				<li>Name: <c:out value="${children.name}" /><br />
				</li>
				<li>Parent <c:out value="${children.parent}" /><br />
				</li>
				<li>Announcement id: <c:out value="${children.announcementId}" /><br />
				</li>
				<li>Create Date: <c:out value="${children.createDate}" /><br />
				</li>

			</c:forEach>
			</ul>
			<br />
			</li>
			<br />
			<br />
			<br />
		</c:forEach>
	</ul>

</body>
</html>