<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<%@include file="allCssAndJs.jsp"%>
<title>Add Notes</title>
</head>
<body>
	<div class="container-fluid p-0 m-0">
		<%@include file="Navbar.jsp"%>
		
		
		<!--Form  -->
		<div class="container">
		<br>
		<h1>Please fill your note details.</h1>
		<form action="SaveNoteServlet" method="post">
			<div class="form-group">
				<label for="title">Note Title</label>
				 <input required name="title" type="text" class="form-control" id="title"
					aria-describedby="emailHelp" placeholder="Enter here"> 
			</div>
			
			<div class="form-group">
				<label for="content">Note Content</label> 
				<textarea required name="content" id="content" placeholder="Enter your content here" class="form-control" style="height: 300px;"></textarea>
			</div>
			
			<div class="container text-center">
			<button type="submit" class="btn btn-primary">Add</button>
			</div>
			
			
		</form>
		</div>
	</div>
</body>
</html>