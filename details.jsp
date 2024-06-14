<%@ page import="kz.abdullaeva.javaEE.Item" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<body>
<%
    Item item = (Item) request.getAttribute("item");
%>
<div class="container">
    <div class="row">
        <form action="/update-item" method="post">
            <div class="form-group">
                <input type="hidden" class="form-control" name="item-id" value="<%=item.getId()%>">
            </div>
            <div class="form-group">
                <label class="form-label">ENTER THE ITEM'S NAME:</label>
                <input type="text" class="form-control" name="item-name" value="<%=item.getName()%>">
            </div>
            <div class="form-group">
                <label class="form-label">ENTER THE ITEM'S PRICE</label>
                <input type="number" class="form-control" name="item-price" value="<%=item.getPrice()%>">
            </div>
            <div class="form-group">
                <label class="form-label">ENTER THE ITEM'S AMOUNT</label>
                <input type="number" class="form-control" name="item-amount" value="<%=item.getAmount()%>">
            </div>
            <div class="form-group">
                <button class="btn btn-info">UPDATE ITEM</button>
            </div>
        </form>
    </div>
    <div class="row">
        <form action="/remove-item" method="post">
            <input type="hidden" value="<%=item.getId()%>" name="item-id">
            <button class="btn btn-danger">REMOVE</button>
        </form>
    </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>
</body>
</html>
