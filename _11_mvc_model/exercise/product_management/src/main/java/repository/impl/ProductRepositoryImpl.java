package repository.impl;

import models.Product;
import repository.IProductRepository;

import java.util.ArrayList;
import java.util.List;

public class ProductRepositoryImpl implements IProductRepository {

    public static List<Product> products = new ArrayList<>();

    static {
        products.add(new Product(1,"Iphone" ,"123.82"));
        products.add(new Product(2,"Samsung" ,"323.62"));
        products.add(new Product(3,"Sony" ,"623.42"));
    }

    @Override
    public List<Product> findAll() {
        return products;
    }

    @Override
    public Product findByName(String name) {
        return null;
    }

    @Override
    public void save(Product product) {
        products.add(product);
    }

    @Override
    public void delete(int id) {

    }
}
