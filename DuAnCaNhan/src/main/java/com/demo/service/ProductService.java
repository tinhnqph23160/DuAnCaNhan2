package com.demo.service;

import com.demo.model.Category;
import com.demo.model.Product;
import org.springframework.stereotype.Service;

import java.util.Arrays;
import java.util.List;

//TODO: Connect to database
@Service
public class ProductService {
//    public List<Product> getAll(){
//        return Arrays.asList(
//            new Product(1, "IPhone X", 10500000,
//                new Category("IP", "IPhone"),
//                "/static/images/iphone-x.jpg"
//            ),
//            new Product(2, "IPhone 11", 11500000,
//                new Category("IP", "IPhone"),
//                "/static/images/iphone-11.jpg"
//            ),
//            new Product(3, "IPhone 12", 12500000,
//                new Category("IP", "IPhone"),
//                "/static/images/iphone-12.jpg"
//            ),
//            new Product(4, "IPhone 13", 13500000,
//                new Category("IP", "IPhone"),
//                "/static/images/iphone-13.webp"
//            ),
//            new Product(5, "IPhone 14", 14500000,
//                new Category("IP", "IPhone"),
//                "/static/images/iphone-14.webp"
//            ),
//            new Product(6, "Galaxy S3", 6500000,
//                new Category("ANDR", "Android"),
//                "/static/images/S3.jpg"
//            ),
//            new Product(7, "Galaxy S4", 7500000,
//                new Category("ANDR", "Android"),
//                "/static/images/S4.webp"
//            )
//        );
//    }

//    public Product findById(int id) {
//        return getAll()
//                .stream()
//                .filter(x -> x.getId() == id)
//                .findFirst()
//                .orElse(null);
//    }
}
