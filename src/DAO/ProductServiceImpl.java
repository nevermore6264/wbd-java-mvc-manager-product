package DAO;

import model.Product;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ProductServiceImpl implements ProductService {

    private static Map<Integer, Product> products;

    static {
        products = new HashMap<>();
        products.put(1, new Product(1, "Iphone 8", 8000, "No", "Apple"));
        products.put(2, new Product(2, "Iphone 7", 7000, "No", "Apple"));
        products.put(3, new Product(3, "Iphone 6", 6000, "No", "Apple"));
        products.put(4, new Product(4, "Iphone 5", 5000, "No", "Apple"));
        products.put(5, new Product(5, "Iphone 4", 4000, "No", "Apple"));
        products.put(6, new Product(6, "Iphone 3", 4000, "No", "Apple"));
    }

    @Override
    public List<Product> findAll() {
        return new ArrayList<>(products.values());
    }

    @Override
    public void save(Product product) {
        products.put(product.getId(), product);
    }

    @Override
    public Product findById(int id) {
        return products.get(id);
    }

    @Override
    public Product findByName(String name) {
        return products.get(name);
    }

    @Override
    public void update(int id, Product product) {
        products.put(id, product);
    }

    @Override
    public void remove(int id) {
        products.remove(id);
    }
}
