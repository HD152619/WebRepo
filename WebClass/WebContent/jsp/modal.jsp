<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    
$(document).ready(function()					// if end document reading(ready) -> anonymous function
  	{
  		$('#loginForm').submit(function(event)
  		{
  			// prevent automatic submit 
  			event.preventDefault();
  			
  			// get id, pw
  			// document.getElementById("id").value
  			var id = $('#id').val();
  			var pwd = $('#pwd').val();
  			console.log(id, pwd);							// value check
  			
  			// sending post to server(ajax)
  			$.post("/WebClass/login",
  					{"id" : id, "pwd" : pwd}, 							// "key" : value, "key" : value
  					function(data)
  					{
  						//alert(data.form.id + ' login');
  						var myModal = $('#myModal');
  						myModal.modal();
  						myModal.find('.modal-body').text(data.id + ' login');
  					});
  			  	});
  		});