package com.bahmanpardaz.springbootautoreservation.repository;

import com.bahmanpardaz.springbootautoreservation.model.Card;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;


@RepositoryRestResource(collectionResourceRel = "cards", path = "cards")
public interface CardRepository extends JpaRepository<Card, Long> {
}
