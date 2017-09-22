/**
 * 
 */
// one-line

// login_modal
  	$(document).ready(function()					// if end document reading(ready) -> anonymous function
  	{
  		$('#loginForm').submit(function(event)
  		{
  			// prevent automatic submit 
  			event.preventDefault();
  			
  			// get id, pw
  			// document.getElementById("id").value
  			var id = $('#id').val();
  			var pw = $('#pw').val();
  			console.log(id, pw);							// value check
  			
  			// sending post to server(ajax)
  			$.post("http://httpbin.org/post",
  					{"id" : id, "pw" : pw}, 							// "key" : value, "key" : value
  					function(data)
  					{
  						//alert(data.form.id + ' login');
  						var myModal = $('#newModal');
  						myModal.modal();
  						myModal.find('.modal-body').text(data.form.id + ' Signed In');
  					});
  			});
  	});
  	
 // join_modal
  	$(document).ready(function()					// if end document reading(ready) -> anonymous function
  		  	{
  		  		$('#joinForm').submit(function(event)
  		  		{
  		  			// prevent automatic submit 
  		  			event.preventDefault();
  		  			
  		  			// get id, pw
  		  			// document.getElementById("id").value
  		  			var name = $('#name').val();
  		  			console.log(name);							// value check
  		  			
  		  			// sending post to server(ajax)
  		  			$.post("http://httpbin.org/post",
  		  					{"name": name}, 							// "key" : value, "key" : value
  		  					function(data)
  		  					{
  		  						//alert(data.form.id + ' login');
  		  						var myModal = $('#joinModal');
  		  						myModal.modal();
  		  						myModal.find('.modal-body').text('☆ <' + data.form.name + '> Signed Up★	');
  		  					});
  		  			});
  		  	});
  	
  	//mouseover function
  	 function menu_over(e)
     {
     	e.setAttribute("class", "nav-item active");		// <li class = "nav-item active">
     }
     function menu_out(e)
     {
     	e.setAttribute("class", "nav-item");		// <li class = "nav-item">
     }