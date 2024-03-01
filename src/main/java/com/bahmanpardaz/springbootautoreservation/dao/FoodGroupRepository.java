package com.bahmanpardaz.springbootautoreservation.dao;

import com.bahmanpardaz.springbootautoreservation.entity.FoodGroup;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

@RepositoryRestResource(collectionResourceRel = "foodGroup", path = "food-group")
public interface FoodGroupRepository extends JpaRepository<FoodGroup, Long> {
}
