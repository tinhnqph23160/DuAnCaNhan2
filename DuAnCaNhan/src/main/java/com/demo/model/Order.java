package com.demo.model;

import lombok.Data;

import javax.persistence.*;
import java.util.Date;

@Data
@Entity
@Table(name="Orders")
public class Order {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    Long id;
    @Column(name="address")
    String address;
    @Temporal(TemporalType.DATE)
    @Column(name="Createdate")
    Date createDate = new Date();
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name="Username")
    Account account;
}
