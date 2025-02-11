package org.example.shop.controller;

import org.example.shop.model.Product;
import org.example.shop.service.ProductRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
public class ProductsController {

    private final ProductRepo productRepo;

    @Autowired
    public ProductsController(ProductRepo productRepo) {
        this.productRepo = productRepo;
    }

    @GetMapping("/products")
    public String getProducts(Model model) {
        List<Product> products = productRepo.findAllByOrderByIdAsc();
        model.addAttribute("products", products);
        return "/admin-panel/products";
    }

    @GetMapping("/products?sortBy=name")
    public String getProductsSortByName(Model model) {
        List<Product> products = productRepo.findAllByOrderByNameAsc();
        model.addAttribute("products", products);
        return "/admin-panel/products";
    }

    @GetMapping("/products/{id}/delete")
    public String deleteProduct(@PathVariable Long id) {
        System.out.println("DP: " + id);
        productRepo.deleteById(id);
        return "redirect:/products";
    }

    @GetMapping("/products/{id}/edit")
    public String editProduct(@PathVariable Long id, Model model) {
        Product product = productRepo.findById(id);
        System.out.println("getEditProduct - " + product);
        model.addAttribute("product", product);
        return "/admin-panel/updateProduct";
    }

    @PostMapping("/products/{id}/edit")
    public String postEditProduct(Product product) {
        System.out.println("EP: " + product);
        productRepo.save(product);
        return  "redirect:/products";
    }

    @GetMapping("/products/add")
    public String addProduct() {
        return "/admin-panel/addProduct";
    }

    @PostMapping("/products/add")
    public String postAddProduct(@ModelAttribute Product product) {
        System.out.println(product);
        System.out.println("PAP: " + product.getId());
        productRepo.save(product);
        return "redirect:/products";
    }

}
