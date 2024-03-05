package com.bahmanpardaz.springbootautoreservation.dao;

import com.bahmanpardaz.springbootautoreservation.entity.Food;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;
import org.springframework.web.bind.annotation.CrossOrigin;

@CrossOrigin
public interface FoodRepository extends JpaRepository<Food, Long> {
}
