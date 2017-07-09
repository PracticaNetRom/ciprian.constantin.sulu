<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<div class="well">
					<h4>Leave a Comment:</h4>
					<div id="welcomeDiv"  style="display:none;" class="answer_list" >
					<form:form action="/comments/add.do?aId=${announcement.id}" method="POST"
					modelAttribute="newComment">
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
							<td colspan="2"><input type="submit" class="btn btn-primary" value="Submit"></td>
						</tr>
					</table>
				</form:form>
				</div>
				</div>