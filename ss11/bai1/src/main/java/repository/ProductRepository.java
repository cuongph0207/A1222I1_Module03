package repository;

import model.Product;

import java.util.List;

public interface ProductRepository {
    List<Product> findAll();

    void add(Product product);

    void update(Product product);

    void delete(Product product);

    Product findById(int id);

    Product findByName(String name);

}
