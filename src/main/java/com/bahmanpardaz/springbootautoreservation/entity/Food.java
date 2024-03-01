package com.bahmanpardaz.springbootautoreservation.entity;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;
import org.hibernate.annotations.CreationTimestamp;

import java.util.Date;

@Entity
@Table(name = "food")
@Setter @Getter
public class Food {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Long id ;

    @ManyToOne(cascade = {
                            CascadeType.DETACH,
                            CascadeType.MERGE,
                            CascadeType.MERGE,
                            CascadeType.PERSIST,
                            CascadeType.REFRESH})
    @JoinColumn( name = "food_group_id", nullable = false)
    private FoodGroup foodGroup;

    @Column(name = "qty")
    private Integer qty;

    @Column(name = "food_name")
    private String foodName;

    @Column(name = "image")
    private String image;

    @Column(name = "active")
    private boolean active;

    @Column(name = "date_created")
    @CreationTimestamp
    private Date dateCreated;

    @Column(name = "date_update")
    @CreationTimestamp
    private Date dateUpdate;
}
