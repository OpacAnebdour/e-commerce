<%-- 
    Document   : AdminSpace
    Created on : 31 mars 2020, 22:26:26
    Author     : Opac
--%>

<%@page import="java.util.List"%>
<%@page import="demo.com.Model.bo.Article"%>
<%@page import="demo.com.Model.bo.Client"%>
<%@page import="demo.com.Model.bo.Admin"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Jekyll v3.8.6">
    <title>Checkout example · Bootstrap</title>

    <!-- Bootstrap core CSS -->
<link href="./css/bootstrap.css" rel="stylesheet" crossorigin="anonymous">
<meta name="theme-color" content="#563d7c">


    <style>
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        -ms-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }
    </style>
    <!-- Custom styles for this template -->
  </head>
  <body class="bg-light">
    <div class="container">
  <div class="py-5 text-center">
      <br><br><br>
    <p class="lead">Admin Space</p>
    <h1>Welcome 
    <%
                session = request.getSession();
                Admin cl = (Admin) session.getAttribute("Admin");
                out.print(cl.getEmail()); 
            %></h1>
  </div>

  <div class="row">
    <div class="col-md-8 order-md-1">
      <h4 class="mb-3">Item List [Name    --    Quantity]</h4>
      <br><br>
        <ul class="list-group">
            <%
                session = request.getSession();
                List<Article> li = (List) session.getAttribute("itemList");
                for(Article c : li){
                    out.print("<li class=\"list-group-item d-flex justify-content-between align-items-center\">"
                            + c.getName() + "<a href=\"DetailAdmin.jsp?id=" + c.getId() + "\">    Detail</a> "
                            + "<span class=\"badge badge-primary badge-pill\">" + c.getQuantity() + "</span>"
                            + "</li>");
                } 
            %>
        </ul>
    </div>
  </div>      
  <footer class="text-muted text-center text-small">
    <p class="mb-1">&copy; 2017-2019 Company Name</p>
    <ul class="list-inline">
      <li class="list-inline-item"><a href="#">Privacy</a></li>
      <li class="list-inline-item"><a href="#">Terms</a></li>
      <li class="list-inline-item"><a href="#">Support</a></li>
    </ul>
  </footer>

<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
      <script>window.jQuery || document.write('<script src="/docs/4.4/assets/js/vendor/jquery.slim.min.js"><\/script>')</script><script src="/docs/4.4/dist/js/bootstrap.bundle.min.js" integrity="sha384-6khuMg9gaYr5AxOqhkVIODVIvm9ynTT5J4V1cfthmT+emCG6yVmEZsRHdxlotUnm" crossorigin="anonymous"></script>
        <script src="form-validation.js"></script></body>
</html>
