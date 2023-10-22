<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@page import="org.hibernate.*"%>
<%@page import="java.util.List"%>
<%@page import="com.entities.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file='all_js_css.jsp'%>
</head>
<body style="background-color:#a7d9ac">

	<div class="container-fluid ">
		<%@include file="navbar.jsp"%>
		<br>
		<h1>Here is your notes</h1>


		<div class="row">
			<div class="col-12">

				<%
				Session s = FactoryProvider.getFactory().openSession();

				Query q = s.createQuery("from Note");
				List<Note> list = q.list();
				for (Note note : list) {
				%>

				<div class="card m-4" style="border:2px solid black;" >
					<img class="card-img-top m-4 text-center" style="max-width:100px" src="image/notepad.png" alt="Card image cap">
					<div class="card-body">
						<h5 class="card-title text-center"><%=note.getTittle() %></h5>
						<p class="card-text text-center"><%=note.getContent() %></p>
						
						
						<div class="container text-center">
						<a href="DeleteServlet?note_id=<%=note.getId()%>" class="btn btn-danger">Delete</a>
					    <a href="edit.jsp?note_id=<%=note.getId()%>" class="btn btn-primary">update</a>
						
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


</body>
</html>