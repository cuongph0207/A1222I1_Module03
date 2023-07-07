package service;

import model.Product;

import java.util.List;

public interface ProductService {
    List<Product> findAll();

    void add(Product product);

    void update(Product product);

    void delete(Product product);

    Product findById(int id);

    Product findByName(String name);


}
