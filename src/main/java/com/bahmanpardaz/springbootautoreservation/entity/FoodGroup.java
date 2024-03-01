package com.bahmanpardaz.springbootautoreservation.entity;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

import java.util.Set;

@Entity
@Table(name = "food_group")
@Setter @Getter
public class FoodGroup {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Long id;

    @Column(name = "group_name")
    private String groupName;

    @OneToMany(cascade = CascadeType.ALL, mappedBy = "foodGroup")
    Set<Food> foods;
}
