package com.bahmanpardaz.springbootautoreservation.service;

import com.bahmanpardaz.springbootautoreservation.dto.CardDto;
import com.bahmanpardaz.springbootautoreservation.dto.CardResponse;

public interface CardService {
    CardDto createCard(CardDto cardDto);
    CardResponse getAllCards(Long pageNo, Long pageSize, String sortBy, String sortDir);
    CardDto getCardById(Long id );
    CardDto updateCard(CardDto cardDto, Long id);
    CardDto deleteCardById(long id);
}
