package com.bahmanpardaz.springbootautoreservation.dao;

import com.bahmanpardaz.springbootautoreservation.entity.Card;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;
import org.springframework.web.bind.annotation.CrossOrigin;

@CrossOrigin("http://localhost:5050")
@RepositoryRestResource(collectionResourceRel = "cards", path = "cards")
public interface CardRepository extends JpaRepository<Card, Long> {
}
