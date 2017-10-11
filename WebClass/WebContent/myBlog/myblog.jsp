<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "org.dimigo.vo.UserVO" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <title>Melanie's Blog</title>
  
    <!-- Required meta tags -->
    <meta charset="utf-8">
    
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.min.js" ></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>
  
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Bootstrap CSS -->
    <link rel = "stylesheet" href = "/WebClass/myBlog/css.css">
    <script  src="/WebClass/myBlog/js.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
      <style>
    	div.container
    	{
     		padding-top : 100px;
    		padding-bottom: 10px;
    	}
    	</style>
</head>
  
<body style = "background-color:black">
  	<img src = "/WebClass/myBlog/img/1d.jpg"  id ="img" alt = "One Direction">
  <nav class="navbar navbar-expand-lg navbar-dark bg-black">
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
  <%@ include file="myMenu.jsp" %>

<%-- 세션에 사용자 정보가 없는 경우 --%>
    <%
    		UserVO user = (UserVO) session.getAttribute("user");
    		if(user == null)
    		{
    %>
 	<a class="text-bold text-white" style="text-decoration: none" href="/WebClass/bloglogin">Sign in</a>
    	<span class="text-bold text-white">&nbsp;</span>
 <%} else { %>
 <%-- 세션에 사용자 정보가 있는 경우 --%>
	    <ul class="navbar-nav flex-row ml-md-auto d-none d-md-flex">
	    <li class="nav-item dropdown">
	      <a class="nav-item nav-link dropdown-toggle mr-md-2" href="#" id="bd-versions" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
	    	<%= user.getName() %>
	    	</a>
	      <div class="dropdown-menu dropdown-menu-right" aria-labelledby="bd-versions">
	      	<form action = "/WebClass/bloglogout" method = "post">
	  	    	<button type="submit" class="dropdown-item">Sign out</button>
	      	</form>
	      	</div>
	    </li>
	    </ul>
	    <%} %>
	    </div>
	    </nav>
<div class = "container" id = "center" >
    <h1>May the Force Be with You.</h1><br><br>
    <h2>Live Long and Prosper.</h2><br><br>
    <h3>ALWAYS.</h3><br><br><br><br>
</div>

<!-- Login Modal -->
<div class="modal" id = "newModal">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title">Login Result</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <p></p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>
</body>
</html>