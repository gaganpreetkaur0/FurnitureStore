<%@page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Add Furniture</title>
	<link rel="shortcut icon" type="image/png" href="static/img/favicon.png"/>
    <script src="static/js/jquery.min.js"></script>
    <script src="static/bootstrap/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="static/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="static/css/form.css">
    
    <% if(request.getParameter("status") != null && request.getParameter("status").equals("exists")) { %>
		<script>alert("This Product already exists");</script>
	<% } %>
	
	
</head>
<body style="background-image: url(static/img/background.jpg); max-width: 100%;  background-size: cover;">
<div class="row register-form">
        <div class="col-md-8 col-md-offset-2">
            <form class="form-horizontal custom-form" action="shop/admin/addFurniture" method="post">
                <h1>Add Product</h1>
                <div class="form-group">
                    <div class="col-sm-4 label-column">
                        <label class="control-label" for="name-input-field">Name </label>
                    </div>
                    <div class="col-sm-6 input-column">
                        <input class="form-control" type="text" name="name" placeholder="Furniture Name" required="">
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-4 label-column">
                        <label class="control-label" for="type-input-field">Type </label>
                    </div>
                    <div class="col-sm-6 input-column">
                        <input class="form-control" type="text" name="type" placeholder="Type of Furniture" required="">
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-4 label-column">
                        <label class="control-label" for="room-input-field">Room </label>
                    </div>
                    <div class="col-sm-6 input-column">
                        <input class="form-control" type="text" name="room" placeholder="Room" required="">
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-4 label-column">
                        <label class="control-label" for="price-input-field">Price </label>
                    </div>
                    <div class="col-sm-6 input-column">
                        <input class="form-control" type="number" name="price" placeholder="Price of the Furniture" required="">
                    </div>
                </div>
                <button class="btn btn-primary submit-button" type="submit">Register </button>
            </form>
        </div>
    </div>
</body>
</html>