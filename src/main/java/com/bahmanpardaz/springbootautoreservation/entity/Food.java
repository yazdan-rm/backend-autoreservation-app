package com.bahmanpardaz.springbootautoreservation.entity;


import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonIgnore;
import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

@Entity
@Table(name = "food")
@AllArgsConstructor
@NoArgsConstructor
@Setter
@Getter
public class Food {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Long id;

    @Column(name = "food_name")
    private String foodName;

    @Column(name = "active")
    private boolean active;

    @Column(name = "date_created")
    private Date dateCreated;

    @Column(name = "date_update")
    private Date dateUpdate;

    @Column(name = "image")
    private String image;

}
