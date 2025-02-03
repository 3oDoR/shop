package org.example.shop.service;

import org.example.shop.model.Product;
import org.springframework.data.repository.Repository;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface ProductRepo extends Repository<Product, Long> {

    void save(Product product);

    List<Product> findAll();

    List<Product> findAllByOrderByIdAsc();

    void deleteById(Long id);

    Product findById(Long id);

    List<Product> findAllByOrderByNameAsc();
}
