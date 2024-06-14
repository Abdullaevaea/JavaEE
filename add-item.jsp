<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<body>
<div class="container">
    <div class="row">
        <form action="/add-item" method="post">
            <div class="form-group">
                <label class="form-label">ENTER THE ITEM'S NAME:</label>
                <input type="text" class="form-control" name="item-name">
            </div>
            <div class="form-group">
                <label class="form-label">ENTER THE ITEM'S PRICE:</label>
                <input type="number" class="form-control" name="item-price">
            </div>
            <div class="form-group">
                <label class="form-label">ENTER THE ITEM'S AMOUNT:</label>
                <input type="number" class="form-control" name="item-amount">
            </div>
            <div class="form-group">
                <button class="btn btn-info">ADD ITEM</button>
            </div>
        </form>
    </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>
</body>
</html>
