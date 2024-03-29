package com.bahmanpardaz.springbootautoreservation.repository;

import com.bahmanpardaz.springbootautoreservation.model.Food;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;
import org.springframework.web.bind.annotation.CrossOrigin;

@CrossOrigin("http://localhost:5050")
@RepositoryRestResource(collectionResourceRel = "foods", path = "foods")
public interface FoodRepository extends JpaRepository<Food, Long> {
}
