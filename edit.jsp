<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.helper.*,org.hibernate.*,com.entities.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
  <%@include file ="all_js_css.jsp"%>

</head>
<body>
<div class="container-fluid">
	<%@include file ="Navbar.jsp"%>
	   	 <h1> Edit Your Note</h1>
	   	 <br>
	   	 
	   	 <% 
	   	int noteId=Integer.parseInt(request.getParameter("note_id").trim());
			
			Session s=FactoryProvider.getFactory().openSession();
			Note note=(Note)s.get(Note.class, noteId);	   	 
	   	 
	   	 
	   	 %>
	   	 
	   	 	     <form action="UpdateServlet" method="post">
	   	 	     
	   	 	      			<input value="<%=note.getId()%>" name="noteId" type="hidden" />
	   	 	     
	  <div class="form-group">
	    <label for="title" class="form-label">Note Title</label>
	    <input required
	    name="title" 
	    type="text" 
	    class="form-control" 
	    id="title" 
	    aria-describedby="emailHelp" 
	    placeholder="Enter here"
	    value="<%= note.getTitle() %>"
	    />
	    
	  </div>
	  <div class="form-group">
				<label for="content">Note Content</label>
				<textarea name="content" required id="content"
					placeholder="Enter your content here" class="form-control"
					style="height: 300px;"><%=note.getContent()%>
					</textarea>


			</div>
	  <div class="Container mt-2">
	    <button type="submit" class="btn btn-success">Save</button>
	    </div>
</form>
	   
	</div>
</body>
</html>