package com.demo.repo;

import com.demo.model.Order;
import com.demo.model.Product;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.Date;
import java.util.List;

@Repository
public interface ProductRepo extends JpaRepository<Product, Integer> {


    @Query("SELECT p FROM Product p WHERE p.name LIKE ?1 and p.category.id LIKE ?2 and p.price BETWEEN ?3 AND ?4")
    Page<Product> searchByNamePrice(String kw,String categoryId, int minPrice, int maxPrice, Pageable pageable);




}
