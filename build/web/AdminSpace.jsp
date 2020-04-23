<%-- 
    Document   : AdminSpace
    Created on : 31 mars 2020, 22:26:26
    Author     : Opac
--%>

<%@page import="demo.com.Model.bo.Article"%>
<%@page import="java.util.List"%>
<%@page import="demo.com.Model.dao.DAOArticle"%>
<%@page import="demo.com.Model.dao.DAOClient"%>
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
    <div class="col-md-4 order-md-2 mb-4">
      <h4 class="d-flex justify-content-between align-items-center mb-3">
        <span class="text-muted">Admin cart</span>
        <span class="badge badge-secondary badge-pill">3</span>
      </h4>
      <ul class="list-group mb-3">
        <li class="list-group-item d-flex justify-content-between lh-condensed">
          <div>
            <h6 class="my-0">Number of client</h6>
          </div>
            <span class="text-muted">
                <%= new DAOClient().retreive().size() %>
            </span>
        </li>
        <li class="list-group-item d-flex justify-content-between lh-condensed">
          <div>
            <h6 class="my-0">Number of product</h6>
            <small class="text-muted">items</small>
          </div>
          <span class="text-muted"><%= new DAOArticle().retreive().size() %></span>
        </li>
        <li class="list-group-item d-flex justify-content-between lh-condensed">
          <div>
            <h6 class="my-0">Sells</h6>
            <small class="text-muted">Dollars</small>
          </div>
          <span class="text-muted">
              <%
                  List<Client> li = new DAOClient().retreive();
                  float price = 0f;
                  for(Client c : li){
                      for(Article cc : c.getPanier().getItems()){
                          price += cc.getPrice();
                      }
                  }
                  out.println("<span>Total (USD)</span> $ <strong>" + price + "</strong>");
              %>
          </span>
        </li>
        <li class="list-group-item d-flex justify-content-between bg-light">
          <div class="text-success">
            <h6 class="my-0">Promo code</h6>
            <small>ANEBDOURROLL</small>
          </div>
          <span class="text-success">-$5</span>
        </li>
      </ul>
    </div>
      
    <div class="col-md-8 order-md-1">
      <h4 class="mb-3">Add an article</h4>
      <form action="./Controller/AdminAddArticle" method="POST">
        <div class="row">
          <div class="col-md-6 mb-3">
            <label for="firstName">name</label>
            <input type="text" class="form-control" name="name" placeholder="name" value="" required>
            <div class="invalid-feedback">
              Valid name is required.
            </div>
          </div>
          <div class="col-md-6 mb-3">
            <label for="lastName">Description</label>
            <input type="text" class="form-control" name="description" placeholder="description" value="" required>
            <div class="invalid-feedback">
              Valid description is required.
            </div>
          </div>
        </div>

        <div class="mb-3">
          <label>quantity</label>
          <div class="input-group">
            <input type="number" class="form-control" name="quantity" placeholder="quantity" required>
          </div>
        </div>

        <div class="mb-3">
          <label>img Url<span class="text-muted">(Optional)</span></label>
          <input type="text" class="form-control" name="img" placeholder="img url">
        </div>

        <div class="mb-3">
          <label>category</label>
          <input type="text" class="form-control" name="category" placeholder="category" required>
          <div class="invalid-feedback">
            Please enter your article category.
          </div>
        </div>

          <div class="mb-3">
          <label>price</label>
          <input type="text" class="form-control" name="price" placeholder="price" required>
        </div>

        <div class="mb-3">
          <label for="address2">Sold<span class="text-muted">(Optional)</span></label>
          <input type="text" class="form-control" name="sold" placeholder="Sold %">
        </div>
          <br>
          <button class="btn btn-primary btn-lg btn-block" type="submit">Continue to Add item</button>
          <br><br> 
        <hr class="mb-4">
      </form>
      <div class="col-md-8 order-md-1">
      <h4 class="mb-3">item list</h4>
      <form action="./Controller/AdminShowArticle" method="GET">
        <div class="row">
        <hr class="mb-4">
        <button class="btn btn-primary btn-lg btn-block" type="submit">Item List</button>
        </div>
      </form>   
    </div>
    </div>
    
  <footer class="my-5 pt-5 text-muted text-center text-small">
    <p class="mb-1">&copy; 2017-2019 Company Name</p>
    <ul class="list-inline">
      <li class="list-inline-item"><a href="#">Privacy</a></li>
      <li class="list-inline-item"><a href="#">Terms</a></li>
      <li class="list-inline-item"><a href="#">Support</a></li>
    </ul>
  </footer>
</div>
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
      <script>window.jQuery || document.write('<script src="/docs/4.4/assets/js/vendor/jquery.slim.min.js"><\/script>')</script><script src="/docs/4.4/dist/js/bootstrap.bundle.min.js" integrity="sha384-6khuMg9gaYr5AxOqhkVIODVIvm9ynTT5J4V1cfthmT+emCG6yVmEZsRHdxlotUnm" crossorigin="anonymous"></script>
        <script src="form-validation.js"></script></body>
</html>
