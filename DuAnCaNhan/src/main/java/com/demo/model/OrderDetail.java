package com.demo.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;

@Data @AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name="OrderDetails")
public class OrderDetail {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name="id")
    Long id;
    @Column(name="price")
    Integer price;
    @Column(name="quantity")
    Integer quantity;
    @ManyToOne
    @JoinColumn(name="Productid")
    Product product;
    @ManyToOne
    @JoinColumn(name="Orderid")
    Order order;
}
