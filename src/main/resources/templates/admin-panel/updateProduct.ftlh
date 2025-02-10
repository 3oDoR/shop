<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Shop</title>
</head>
<body>

<form action="/products/${product.id}/edit" method="POST">
    <label for="name">Name of product:</label><br>
    <input type="text" id="name" name="name" value="${product.name!}">
    <br>
    <label for="sku">SKU:</label><br>
    <input type="text" id="sku" name="sku" value="${product.sku!}">
    <br>
    <label for="description">Description:</label><br>
    <input type="text" id="description" name="description" value="${product.description!}">
    <br>
    <label for="price">Price:</label><br>
    <input type="number" id="price" name="price" value="${product.price!}">
    <br>
    <label for="stock">Stock:</label><br>
    <input type="number" id="stock" name="stock" value="${product.stock!}">
    <br>
    <button>Update</button>
</form>
</body>
</html>