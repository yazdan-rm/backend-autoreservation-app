package com.bahmanpardaz.springbootautoreservation.service.impl;

import com.bahmanpardaz.springbootautoreservation.dto.CardDto;
import com.bahmanpardaz.springbootautoreservation.dto.CardResponse;
import com.bahmanpardaz.springbootautoreservation.exception.ResourceNotFoundException;
import com.bahmanpardaz.springbootautoreservation.model.Card;
import com.bahmanpardaz.springbootautoreservation.repository.CardRepository;
import com.bahmanpardaz.springbootautoreservation.service.CardService;
import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CardServiceImpl implements CardService {

    private final CardRepository cardRepository;
    private final ModelMapper modelMapper;

    @Autowired
    public CardServiceImpl(CardRepository cardRepository,
                           ModelMapper modelMapper) {
        this.cardRepository = cardRepository;
        this.modelMapper = modelMapper;
    }

    @Override
    public CardDto createCard(CardDto cardDto) {

        Card card = mapToEntity(cardDto);

        Card responseCard = this.cardRepository.save(card);

        return mapToDTO(responseCard);
    }

    @Override
    public CardResponse getAllCards(Long pageNo, Long pageSize, String sortBy, String sortDir) {
        Sort sort = sortDir.equalsIgnoreCase(Sort.Direction.ASC.name())? Sort.by(sortBy).ascending():
                Sort.by(sortBy).descending();

        // get content for gage object
        PageRequest pageable = PageRequest.of(
                Math.toIntExact(pageNo),
                Math.toIntExact(pageSize),
                sort
        );

        Page<Card> cards = this.cardRepository.findAll(pageable);

        List<Card> listOfCards = cards.getContent();

        List<CardDto> content = listOfCards.stream().map(this::mapToDTO).toList();

        CardResponse cardResponse = new CardResponse();
        cardResponse.setContent(content);
        cardResponse.setPageNo(cards.getNumber());
        cardResponse.setPageSize(cards.getSize());
        cardResponse.setTotalElements(cards.getTotalElements());
        cardResponse.setTotalPages(cards.getTotalPages());
        cardResponse.setLast(cards.isLast());
        return cardResponse;
    }

    @Override
    public CardDto getCardById(Long id) {
        Card card = cardRepository.findById(id).orElseThrow(
                ()-> new ResourceNotFoundException("card", "id", id)
        );
        return mapToDTO(card);
    }

    @Override
    public CardDto updateCard(CardDto cardDto, Long id) {
        Card card = cardRepository.findById(id).orElseThrow(
                () -> new ResourceNotFoundException("card", "id", id)
        );
        card.setDateCreated(cardDto.getDateCreated());

        Card responseCard = cardRepository.save(card);

        return mapToDTO(responseCard);
    }

    @Override
    public void deleteCardById(long id) {
        Card card = cardRepository.findById(id).orElseThrow(
                () -> new ResourceNotFoundException("card", "id", id)
        );
        this.cardRepository.delete(card);
    }

    private CardDto mapToDTO(Card card){
        CardDto cardDto = modelMapper.map(card, CardDto.class);
        // covert Entity to DTO
//        CardDto cardDto = new CardDto();
//        cardDto.setId(card.getId());
//        cardDto.setDateCreated(card.getDateCreated());
        return cardDto;
    }

    private Card mapToEntity(CardDto cardDto){
        Card card = modelMapper.map(cardDto, Card.class);
        // covert DTO to Entity
//        Card card = new Card();
//        card.setId(cardDto.getId());
//        card.setDateCreated(cardDto.getDateCreated());
        return card;
    }
}
