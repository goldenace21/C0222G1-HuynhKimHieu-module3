package service.impl;

import models.Product;
import repository.IProductRepository;
import repository.impl.ProductRepositoryImpl;
import service.IProductService;

import java.util.List;
import java.util.Map;

public class productServiceImpl implements IProductService {

    IProductRepository productRepository = new ProductRepositoryImpl();

    @Override
    public List<Product> findAll() {
        return productRepository.findAll();
    }

    @Override
    public Product findByName(String name) {
        return null;
    }

    @Override
    public Map<String, String> save(Product product) {
        return null;
    }

    @Override
    public void delete(int id) {

    }
}
