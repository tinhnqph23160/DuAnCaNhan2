package com.demo.model;

import lombok.*;

import javax.persistence.*;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name="Accounts")
public class Account {
    @Id
    @Column(name="username")
    @NotEmpty(message = "{name}")
    private String username;

    @NotEmpty(message = "{name}")
    @Column(name="password")
    private String password;

    @NotEmpty(message = "{name}")
    @Column(name="fullname")
    private String fullname;

    @NotEmpty(message = "{name}")
    @Column(name="email")
    private String email;

    @NotNull(message = "{name}")
    @Column(name="admin")
    private Integer admin;
}
