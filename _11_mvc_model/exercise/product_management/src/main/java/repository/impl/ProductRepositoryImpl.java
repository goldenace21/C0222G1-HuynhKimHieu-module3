package repository.impl;

import models.Product;
import repository.IProductRepository;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ProductRepositoryImpl implements IProductRepository {

    public static Map<Integer,Product> products = new HashMap<>();

    static {
        products.put(1,new Product(1,"Iphone" ,"123.82"));
        products.put(2,new Product(2,"Samsung" ,"323.62"));
        products.put(3,new Product(3,"Sony" ,"623.42"));
    }

    @Override
    public List<Product> findAll() {
        return new ArrayList<>(products.values());
    }

    @Override
    public Product findByName(String name) {
        return null;
    }

    @Override
    public void save(Product product) {
        products.put(product.getId(),product);
    }

    @Override
    public void delete(Integer id) {
        products.remove(id);
    }

    public Product findById(Integer id) {
        return products.get(id);
    }
}
