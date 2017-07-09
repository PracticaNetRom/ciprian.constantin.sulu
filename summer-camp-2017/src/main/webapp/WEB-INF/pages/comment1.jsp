<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<head>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script>
	$(document).ready(function() {
		$("#hide").click(function() {
			$("#welcomeDiv").hide();
		});
		$("#show").click(function() {
			$("#welcomeDiv").show();
		});
	});
</script>
</head>
<div>
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
			Content
			<c:out value="${node.content}" />
			<br />
		</p>
		<p>
			Create Date:
			<c:out value="${node.createDate}" />
		</p>
		<p>
			Id:
			<c:out value="${node.id}" />
		</p>

		<!--  <input type="button" name="answer" value="Show Div"
			onclick="showDiv()" /> -->
		<button id="show">Show</button>
		<button id="hide">Hide</button>
		<div id="welcomeDiv">
			<form:form
				action="/comments/add.do?aId=${announcement.id}&pId=${node.id}"
				method="POST" modelAttribute="newComment">
				<table>
					<tr>
						<td>Nane :</td>
						<td><form:input type="text" path="name" /></td>
					</tr>
					<tr>
						<td>Content :</td>
						<!--  	<td><form:input type="text" path="content" /></td>-->
						<td><form:textarea type="text" path="content" /></td>
					</tr>
					<tr>
						<td colspan="2"><input type="submit" class="btn btn-primary"
							value="Submit"></td>
					</tr>
				</table>
			</form:form>
		</div>

		<c:forEach var="X" items="${node.children}">
			<div style="padding-left: 60px; padding-bottom: 5px">

				<div style="padding-left: 60px; padding-bottom: 5px">
					<c:set var="node" value="${X}" scope="request" />
					<jsp:include page="comment1.jsp" />
				</div>


			</div>
		</c:forEach>
	</div>

</div>
<!--  
<script type="text/javascript">
	function showDiv() {
		document.getElementById('welcomeDiv').style.display = "block";
	}
</script>
-->


