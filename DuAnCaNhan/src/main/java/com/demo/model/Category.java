package com.demo.model;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.util.List;

@Data
@AllArgsConstructor
@NoArgsConstructor

@Entity
@Table(name="Categories")
public class Category {
    @Id
    @Column(name = "id")
    private String id;
    @Column(name="name")
    private String name;

}
