<%@page import="com.entities.Note"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.w3c.dom.css.CSSFontFaceRule"%>
<%@page import="org.hibernate.Session"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@include file="all_js_css.jsp"%>
<title>Insert title here</title>
</head>
<body>
	<div class="container-fluid">
		<%@include file="navbar.jsp"%>
		<br>
		<h1>Edit your note</h1>
		<%
		int noteId = Integer.parseInt(request.getParameter("note_id").trim());
		Session s = FactoryProvider.getFactory().openSession();
		Note note = (Note) s.get(Note.class, noteId);
		%>

		<form action="UpdateServlet" method="post">
		
		<input value="<%=note.getId() %>" name= "noteId" />
			<div class="form-group">
				<label for="content">Note Tittle</label> <input name="tittle"
					required type="text" class="form-control"
					id="exampleInputPassword1" placeholder="Enter tittli here "
					value="<%=note.getTittle()%>" />

			</div>

			<div class="form-group">
				<label for="">Note Content </label>
				<textarea name="content" required id="content" class="form-control"
					placeholder="Enter your note contant here " Style="height: 250px;"
					value="<%=note.getTittle()%>"> <%=note.getContent()%></textarea>

			</div>
			<div class="container">
				<button type="submit" class="btn btn-success">Update</button>

			</div>



		</form>

	</div>

</body>
</html>