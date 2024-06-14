<%@ page import="java.util.ArrayList" %>
<%@ page import="kz.abdullaeva.javaEE.Item" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>HOME PAGE</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<body>
<%
    ArrayList<Item> items = (ArrayList<Item>) request.getAttribute("items");
%>
<div class="container">
    <div class="row">
        <%
            for (int i = 0; i < items.size(); i++) {
        %>
        <div class="col-md-4">
            <div class="card">
                <h3 class="card-title"><%=items.get(i).getName()%></h3>
                <div class="card-body">
                    <h4 class="card-text"><%=items.get(i).getPrice()%></h4>
                    <h4 class="card-text"><%=items.get(i).getAmount()%></h4>
                    <a href="/details?id=<%=items.get(i).getId()%>" class="btn btn-info">DETAILS<a>
                </div>
            </div>
        </div>
        <%
            }
        %>
    </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>
