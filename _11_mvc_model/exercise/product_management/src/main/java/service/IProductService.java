package service;

import models.Product;

import java.util.List;
import java.util.Map;

public interface IProductService {
    List<Product> findAll();
    Product findByName(String name);
    Map<String,String> save(Product product);
    void delete(int id);
}
