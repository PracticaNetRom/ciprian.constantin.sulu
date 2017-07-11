<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title> <c:out value="${announcement.title}" /> </title>

<!-- Bootstrap Core CSS -->
<link href="resources/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom CSS -->
<link href="resources/css/blog-post.css" rel="stylesheet">

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    

</head>

<body>

	<!-- Navigation -->
	 <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="/announcements">Home</a>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <li>
                        <a href="/post">Post</a>
                    </li>
                
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>

	<!-- Page Content -->
	<div class="container">

		<div class="row">

			<!-- Blog Post Content Column -->
			<div class="col-lg-8">

				<!-- Blog Post -->

				<!-- Title -->
				<h1>
					<c:out value="${announcement.title}" />
				</h1>

				<!-- Author -->
				<p class="lead">
					by <a href="#">${announcement.ownerFirstName}&nbsp;${announcement.ownerLastName}</a>
				</p>

				<hr>

				<!-- Date/Time -->
				<p>
					<span class="glyphicon glyphicon-time"></span>
					<c:out value="${announcement.createDate}" />
				</p>

				<hr>

				<!-- Preview Image -->
				<img class="img-responsive" src="http://placehold.it/900x300" alt="">

				<hr>

				<!-- Post Content -->
				<p class="lead">Category: ${announcement.categoryName}</p>
				<p class="lead">Category description:
					${announcement.categoryDescription}</p>
				<p class="lead">Location: ${announcement.location}</p>
				<p>Owner Email: ${announcement.ownerEmail}</p>
				<p>Owner Phone: ${announcement.ownerPhone}</p>
				<p>Confirmation Code: ${announcement.confirmationCode}</p>
				<p>
					Expires on: <span class="glyphicon glyphicon-time"></span>
					<c:out value="${announcement.expireDate}" />
				</p>
				<hr>

				 
				
				
				<!-- Comments Form -->
				<div class="well">
					<h4>Leave a Comment:</h4>
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

				<hr>

			
				
				<a class="btn btn-primary" href="/comments?id=${announcement.id}">Show
					Comments<span class="glyphicon glyphicon-chevron-right"></span>
				</a> <br />
				<br />
				  
				<div class="well">
				<c:forEach var="X" items="${comments}">
					<c:set var="node" value="${X}" scope="request" />
					<jsp:include page="comment1.jsp" />
				</c:forEach>
				</div>
			
				
			</div>

			<!-- Blog Sidebar Widgets Column -->
			<div class="col-md-4">

				<!-- Blog Search Well -->
				<div class="well">
					<h4>Blog Search</h4>
					<div class="input-group">
						<input type="text" class="form-control"> <span
							class="input-group-btn">
							<button class="btn btn-default" type="button">
								<span class="glyphicon glyphicon-search"></span>
							</button>
						</span>
					</div>
					<!-- /.input-group -->
				</div>

				<!-- Blog Categories Well -->
				

				<!-- Side Widget Well -->
				 <div class="well">
                    <h4>Announcements website</h4>
                    <p> This is a website for announcements</p>
                </div>

			</div>

		</div>
		<!-- /.row -->

		<hr>

		<!-- Footer -->
		<footer>
		<div class="row">
			<div class="col-lg-12">
				<p>Copyright &copy; Announcements 2017</p>
			</div>
		</div>
		<!-- /.row --> </footer>

	</div>
	<!-- /.container -->

	<!-- jQuery -->
	<script src="js/jquery.js"></script>

	<!-- Bootstrap Core JavaScript -->
	<script src="js/bootstrap.min.js"></script>

</body>
</html>