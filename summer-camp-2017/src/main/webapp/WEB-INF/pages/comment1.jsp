<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<div >
	<a class="pull-left" href="#"> <img class="media-object"
		src="http://placehold.it/64x64" alt="">
	</a>
	<div style="padding-left: 70px; padding-bottom: 5px">
	<p>
		Name:
		<c:out value="${node.name}" />
		<br />
	</p>
	<p>
		Parent
		<c:out value="${node.parent}" />
		<br />
	</p>
	<p>
		Announcement id:
		<c:out value="${node.announcementId}" />
		<br />
	</p>
	<p>
		Create Date:
		<c:out value="${node.createDate}" />
		<br />
	</p>
	</div>
	<c:forEach var="X" items="${node.children}">
		<div style="padding-left: 60px; padding-bottom: 5px">
			<a class="pull-left" href="#"> <img class="media-object"
				src="http://placehold.it/64x64" alt="">
			</a>
			<div style="padding-left: 60px; padding-bottom: 5px">
				<c:set var="node" value="${X}" scope="request" />
				<jsp:include page="comments.jsp" />
			</div>
		</div>
	</c:forEach>
</div>




