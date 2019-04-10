<%@page import="models.Furniture"%>
<%@page import="models.Order"%> 
<%@page import="database.JDBC" %>
<%@page import="database.Local" %>
<%@page import="session.Session" %>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

	<link rel="shortcut icon" type="image/png" href="static/img/favicon.png"/>
    <link href="static/css/index.css" rel="stylesheet"/>
    <link href="static/bootstrap/css/bootstrap4.min.css" rel="stylesheet"/>
    <script src="static/bootstrap/js/bootstrap4.min.js"></script>
	<script src="static/js/jquery-3.2.0.min.js"></script>

</head>
<body>
<div class="container">
   <div class="row">
      <% for(Order order: Local.getCart()){ 
      
      %>     
      <div class="col-md-4">
         <div class="card">
            <img height="250px" width="250px" class="card-img-top" src="<%= fur.getImage() %>" alt="Card image cap">
            <div class="card-body">
               <h5 class="card-title border-bottom pb-3"><%= fur.getName() %></h5>
               <p class="card-text">Price: Rs <%= fur.getPrice() %><br>Room: <%= fur.getRoom() %><br> Type: <%= fur.getType() %></p>
               <a href="#" class="btn btn-info float-left">Add to Cart</a>
               <a href="#" class="btn btn-success float-right"> Buy Now </a>
            </div>
         </div>
      </div>
      <% } %>    
   </div>

</div>


</body>
</html>