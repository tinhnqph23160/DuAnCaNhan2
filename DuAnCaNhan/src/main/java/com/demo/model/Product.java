package com.demo.model;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import java.util.Date;

@Data @AllArgsConstructor
@NoArgsConstructor
@Builder
@Entity
@Table(name ="Products")
public class Product {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @Column(name="name")
    @NotEmpty(message = "{name}")
    private String name;

    @Column(name="price")
    @NotNull(message = "{name}")
    private Integer price;

    @ManyToOne
    @JoinColumn(name="Categoryid")
    private Category category;

    @Column(name="image")
    @NotEmpty(message = "{name}")
    private String image;

    @Temporal(TemporalType.DATE)
    @Column(name="Createdate", nullable = false)
    private Date createDate = new Date();
}
