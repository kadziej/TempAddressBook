<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles-extras" prefix="tilesx" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<tilesx:useAttribute name="currentPage" />

<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/0.9.0/jquery.mask.min.js" type="text/javascript"></script>
	<script type="text/javascript" src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.13.1/jquery.validate.min.js"></script>
	
	
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title><tiles:getAsString name="title" /></title>
		
</head>

<tilesx:useAttribute name="currentPage" />

<body>
<div class="container">
		<div class="navbar navbar-default" role="navigation">
			<div class="container-fluid">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="<spring:url value="/" />">ABC</a>
				</div>
				<div class="navbar-collapse collapse">
					<ul class="nav navbar-nav">
						<li class="${currentPage == 'index' ? 'active' : ''}"><a href='<spring:url value="/" />'>Home</a></li>
						<li class="${currentPage == 'contacts' ? 'active' : ''}"><a href="<spring:url value="/contacts" />">Kontakty</a></li>
						<li class="${currentPage == 'add-contact' ? 'active' : ''}"><a href="<spring:url value="/contacts/add" />">Dodaj kontakt</a></li>
						
						<li class="${currentPage == 'about' ? 'active' : ''}"><a href="<spring:url value="/about" />">About</a></li>
					</ul>
				</div>
			</div> <!-- container-fluid -->
		</div>

			<br>
			<tiles:insertAttribute name="body" />
			<br>
			<tiles:insertAttribute name="footer" />
</div>
</body>
</html>