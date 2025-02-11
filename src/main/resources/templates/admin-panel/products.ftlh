<style>
    table {
        font-family: arial, sans-serif;
        border-collapse: collapse;
        width: 100%;
    }

    td, th {
        border: 1px solid #000000;
        text-align: left;
        padding: 8px;
    }

    tr:nth-child(even) {
        background-color: #dddddd;
    }
</style>

<div>
    <a href="/products/add">Add product</a>
    <a href="/products/export-pdf">Export pdf</a>
    <a href="/products/export-">Export excel</a>
</div>

<table style="width:100%">
    <tr>
        <th>Id</th>
        <th>Name</th>
        <th>SKU</th>
        <th>Description</th>
        <th>Price</th>
        <th>Stock</th>
        <th>Edit</th>
        <th>Delete</th>
    </tr>
    <#list products as item>
        <tr>
            <th>${item.id}</th>
            <th>${item.name}</th>
            <th>${item.sku}</th>
            <th>${item.description}</th>
            <th>${item.price}</th>
            <th>${item.stock}</th>
            <th><a href="/products/${item.id}/edit">Edit</a></th>
            <th><a href="/products/${item.id}/delete">Delete</a></th>
        </tr>
    </#list>
</table>