<%@page import="com.entities.Note"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.query.Query"%>
<%@page import="com.helper.FactoryProvider"%>
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
<title>All Notes</title>
</head>
<body>
	<div class="container-fluid p-0 m-0">
		<%@include file="Navbar.jsp"%>

		<div class="container">
			<br>
			<h1 class="text-uppercase">All Notes :</h1>

			<div class="row">

				<div class="col-12">

					<%
					Session s = FactoryProvider.getFactory().openSession();
					Query q = s.createQuery("from Note");
					List<Note> list = q.list();
					for (Note note : list) {
					%>
					<div class="card mt-3">

						<div class="card-body">
							<img class="card-img-top mx-auto" style="max-width: 50px;"
								src="img/notepad.png" alt="Card image cap">
							<h5 class="card-title"><%=note.getTitle()%></h5>
							<p class="card-text"><%=note.getContent()%></p>
							<div class="container text-center mt-4">
							<a href="DeleteServlet?noteId=<%= note.getId() %>" class="btn btn-danger">Delete</a>
							<a href="edit.jsp?noteId=<%= note.getId() %>" class="btn btn-primary">Update</a>
							</div>
						</div>
					</div>

					<%
					}
					s.close();
					%>

				</div>
			</div>

		</div>
	</div>
</body>
</html>