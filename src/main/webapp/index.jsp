<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<%@include file="allCssAndJs.jsp"%>
<title>Note Maker : Home Page</title>
</head>
<body>
	<div class="container-fluid p-0 m-0">
		<%@include file="Navbar.jsp"%>

		<div
			style="background-image: url('img/note.jpg'); background-size: cover; opacity: 0.8; width: 100vw; height: 90vh"
			alt="Card image cap">
			<div
				style="text-align: center; font-size: 60px; color: #ff0000; padding-top: 6rem; font-weight: bold;">Welcome
				to Note Maker.</div>
			<div class="container text-center"
				style="width: 150px; margin-top: 50px;">
				<div
					style="cursor: pointer; color: #ff0000; height: 32px; width: 110px; border: 2px solid red; background-color: black; border-radius: 8px; font-weight: 700;">
					<a href="addNote.jsp" style="text-decoration: none">Add Note</a>
				</div>

			</div>

		</div>
	</div>

</body>
</html>