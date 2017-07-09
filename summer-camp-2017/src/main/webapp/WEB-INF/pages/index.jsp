<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Announcements Home</title>

<!-- Bootstrap Core CSS -->
<link href="<c:url value='/resources/css/bootstrap.min.css' />"
	rel="stylesheet">

<!-- Custom CSS -->
<link href="<c:url value='/resources/css/blog-home.css' />"
	rel="stylesheet">

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
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#bs-example-navbar-collapse-1">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="/announcements">Home</a>
			</div>
			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse"
				id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav">
					<li><a href="/post">Post</a></li>

				</ul>
			</div>
			<!-- /.navbar-collapse -->
		</div>
		<!-- /.container -->
	</nav>

	<!-- Page Content -->
	<div class="container">

		<div class="row">

			<!-- Blog Entries Column -->
			<div class="col-md-8">

				<h1 class="page-header">
					All announcemets <small>Secondary Text</small>
				</h1>



				<c:forEach var="announcement" items="${announcements}">

					<c:if test="${announcement.status != true}">
					<c:if test="${announcement.categoryName != var}">
						<!-- First Blog Post -->
						<h2>
							<a href="/announcement?id=${announcement.id}"><c:out
									value="${announcement.title}" /></a>
						</h2>
						<p class="lead">
							by <a href="index.php">${announcement.ownerFirstName}&nbsp;${announcement.ownerLastName}</a>
						</p>
						<p>
							<span class="glyphicon glyphicon-time"></span>
							<c:out value="${announcement.createDate}" />
						</p>

						<p>
							Category:
							<c:out value="${announcement.categoryName}" />
						</p>


						<a class="btn btn-primary"
							href="/announcement?id=${announcement.id}">Read More<span
							class="glyphicon glyphicon-chevron-right"></span></a>

						<form action="/announcement/close.do?aId=${announcement.id}&oEmail=${announcement.ownerEmail}"
							method="POST">
							<c:set var="var" value="${var}"/>
							<input type="text" name="ownerEmail" value="${announcement.ownerEmail}"  placeholder="Email address"
								required="required" class="form" /> 
							<input type="submit"
								class="btn btn-primary" value="Delete">
						</form>
						<hr>
					</c:if>
					</c:if>
				</c:forEach>

		

				<!-- Pager -->
				<ul class="pager">
					<li class="previous"><a href="#">&larr; Older</a></li>
					<li class="next"><a href="#">Newer &rarr;</a></li>
				</ul>

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
				<div class="well">
					<h4>Announcemet Categories</h4>
					<div class="row">
						
						<!-- /.col-lg-6 -->
						<div class="col-lg-6">
							<ul class="list-unstyled">
							<c:forEach var="cat" items="${category}">
								<li><a href="/announcements?categ=${cat.name}"> <c:out value="${cat.name}" /> </a></li>
								</c:forEach>
								
							</ul>
						</div>
						<!-- /.col-lg-6 -->
					</div>
					<!-- /.row -->
				</div>

				<!-- Side Widget Well -->
				<div class="well">
					<h4>Announcements website</h4>
					<p>This is a website for announcements</p>
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
				<!-- /.col-lg-12 -->
			</div>
			<!-- /.row -->
		</footer>

	</div>
	<!-- /.container -->

	<!-- jQuery -->
	<script src="js/jquery.js"></script>

	<!-- Bootstrap Core JavaScript -->
	<script src="js/bootstrap.min.js"></script>

</body>

</html>

</html>