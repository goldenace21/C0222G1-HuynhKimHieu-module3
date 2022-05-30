package repository;

import models.Product;

import java.util.List;

public interface IProductRepository {
    List<Product> findAll();
    Product findByName(String name);
    void save(Product product);
    void delete(int id);
}
