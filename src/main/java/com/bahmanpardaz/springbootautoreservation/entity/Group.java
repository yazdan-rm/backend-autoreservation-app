package com.bahmanpardaz.springbootautoreservation.entity;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;
import java.util.Set;
import java.util.TreeSet;

@Entity
@Table(name = "groups_f")
@Setter @Getter
public class Group {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Long id;

    @Column(name = "group_name")
    private String groupName;


    @Column(name = "qty_member")
    private Long qtyMember;



    @ManyToMany(cascade = CascadeType.ALL)
    @JoinTable(
            name = "food_group",
            joinColumns = @JoinColumn(name = "group_id"),
            inverseJoinColumns = @JoinColumn(name = "food_id")
    )
    Set<Food> foods;


    public void addFood(Food food){
        if(foods == null){
            foods = new TreeSet<>();
        }

        foods.add(food);
    }
}
