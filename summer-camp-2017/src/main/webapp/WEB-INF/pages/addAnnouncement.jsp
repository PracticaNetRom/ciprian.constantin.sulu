<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Blog Post - Start Bootstrap Template</title>

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
			<h1>Add your announcement</h1>
			<!-- Blog Post Content Column -->
			<div class="col-lg-8">

				<!-- Blog Post -->

				<!-- Title -->
				<h1></h1>

				<div class="inner contact">
					<div class="contact-form">
						<form:form action="/announcement/add.do" method="POST"
							modelAttribute="newAnnouncement">

							<div class="col-xs-6 wow animated slideInLeft"
								data-wow-delay=".5s">
								<form:input type="text" path="title" required="required"
									class="form" placeholder="Tittle" />




								<form:input type="text" path="location" class="form"
									placeholder="Location" />


								<form:input type="text" path="confirmationCode"
									placeholder="Confirmation code" class="form" />





								<form:input type="text" id="datepicker"
									placeholder="Expiration date" path="expireDate"
									required="required" class="form" />


								<form:input type="text" path="ownerEmail"
									placeholder="Email address" required="required" class="form" />


								<form:input type="text" path="ownerFirstName"
									placeholder="First Name" required="required" class="form" />


								<form:input type="text" path="ownerLastName"
									placeholder="Last Name" required="required" class="form" />


								<form:input type="text" path="ownerPhone" class="form"
									placeholder="Phone" />


								

								<form:select path="categoryName"
									placeholder="Category" required="required" class="form">
									<option value="Category1">Category1</option>
									<option value=Category2>Category2</option>
									<option value="Cars">Cars</option>
									<option value="Electronics">Electronics</option>
									<option value="Projects">Projects</option>
									<option value="testNewValidation">testNewValidation</option>
								</form:select>

							</div>

							<div class="col-xs-6 wow animated slideInRight"
								data-wow-delay=".5s">

								<form:textarea type="text" path="content" placeholder="Content"
									required="required" id="message" class="form textarea" />

							</div>

							<input type="submit" class="form-btn semibold" value="Post">

						</form:form>
					</div>
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