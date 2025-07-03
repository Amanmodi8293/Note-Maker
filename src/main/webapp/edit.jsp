<%@page import="com.helper.FactoryProvider"%>
<%@page import="com.entities.Note"%>
<%@page import="org.hibernate.Transaction"%>
<%@page import="org.hibernate.Session"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<%@include file="allCssAndJs.jsp"%>
<title>Edit Page : Note Maker</title>
</head>
<body>
	<div class="container-fluid p-0 m-0">
		<%@include file="Navbar.jsp"%>
		<div class="container">
			<br>

			<h1>Edit your note.</h1>
			<%
			int noteId = Integer.parseInt(request.getParameter("noteId").trim());

			Session s = FactoryProvider.getFactory().openSession();

			Note note = (Note) s.get(Note.class, noteId);
			%>
			<form action="UpdateServlet" method="post">
			    <input value="<%= note.getId() %>" name="noteId" type="hidden">
				<div class="form-group">
					<label for="title">Note Title</label> <input required name="title"
						type="text" class="form-control" id="title"
						aria-describedby="emailHelp" placeholder="Enter here" value="<%= note.getTitle() %>">
				</div>

				<div class="form-group">
					<label for="content">Note Content</label>
					<textarea required name="content" id="content"
						placeholder="Enter your content here" class="form-control"
						style="height: 300px;"><%= note.getContent() %></textarea>
				</div>

				<div class="container text-center">
					<button type="submit" class="btn btn-success">Save your note</button>
				</div>


			</form>






		</div>
	</div>
</body>
</html>