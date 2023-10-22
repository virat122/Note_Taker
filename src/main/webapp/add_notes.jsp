<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file="all_js_css.jsp"%>
</head>
<body>
	<div class="container-fluid">
		<%@include file="navbar.jsp"%>
		<br>



		<h1>Please fill your note details</h1>

		<!-- this is add form  -->
		<form action="SaveNoteServlet" method="post">
			<div class="form-group">
				<label for="content">Note Tittle</label> <input
				name="tittle" required type="text"
					class="form-control" id="exampleInputPassword1"
					placeholder="Enter tittli here ">

			</div>

			<div class="form-group">
				<label for="">Note Content </label>
				<textarea 
				name="content"
				required id="content" class="form-control"
					placeholder="Enter your note contant here " Style="height: 250px;">
				</textarea>

			</div>
			<div class="container">
				<button type="submit" class="btn btn-primary">Submit</button>

			</div>



		</form>


	</div>


</body>
</html>