<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Shop</title>
</head>
<body>

<form action="/products/add" method="POST">
    <label for="name">Name of product:</label><br>
    <input type="text" id="name" name="name">
    <br>
    <label for="sku">SKU:</label><br>
    <input type="text" id="sku" name="sku" >
    <br>
    <label for="description">Description:</label><br>
    <input type="text" id="description" name="description">
    <br>
    <label for="price">Price:</label><br>
    <input type="text" id="price" name="price">
    <br>
    <label for="stock">Stock:</label><br>
    <input type="text" id="stock" name="stock">
    <br>
    <button>Create</button>
</form>
</body>
</html>