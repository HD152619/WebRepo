<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
  <title>Geek's Page</title>
  
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">					 <!-- viewpoint : template form; recommend using this-->

    <!-- Bootstrap CSS -->
    <link rel ="stylesheet" href ="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
    <link rel ="stylesheet" href = "../css/footer.css">
    <style>
    	div.container
    	{
    		padding-top : 30px;
    		padding-bottom: 20px;
    	}
    </style>
    
    <script>
    function menu_over(e)
    {
    	e.setAttribute("class", "nav-item active");		// <li class = "nav-item active">
    }
    function menu_out(e)
    {
    	e.setAttribute("class", "nav-item");		// <li class = "nav-item">
    }
    </script>
  </head>

  <body>
  <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <a class="navbar-brand" href="#">Home</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
  	<%@ include file = "menu.jsp" %>
    <form class="form-inline my-2 my-lg-0" id = "loginForm">
      <input class="form-control mr-sm-2" type="text" placeholder="ID" aria-label="ID" id = "id" required>
      <input class="form-control mr-sm-2" type="password" placeholder="PWD" aria-label="PWD" id = "pwd" required>
      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Login</button>
    </form>
  </div>
</nav>

<div class = "container">								<!-- Bootstrap supporting form; Let's make blanks! -->
    <h1>Hello, Bootstrap</h1>
    <p>
    But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure? On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee
    </p>
    </div>
    
 <!-- modal -->   
    <div class="modal" id = "myModal">
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
    
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.min.js" ></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>
  				<!-- min : remove blank space -->
  	<%@ include file = "modal.jsp" %>
  	<%@ include file = "footer.jsp" %>
  	</script>
  
  </body>
</html>