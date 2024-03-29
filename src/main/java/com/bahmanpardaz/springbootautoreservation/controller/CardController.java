package com.bahmanpardaz.springbootautoreservation.controller;


import com.bahmanpardaz.springbootautoreservation.dto.CardDto;
import com.bahmanpardaz.springbootautoreservation.dto.CardResponse;
import com.bahmanpardaz.springbootautoreservation.service.CardService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import static com.bahmanpardaz.springbootautoreservation.utils.AppConstants.*;

@CrossOrigin("http://localhost:5050")
@RestController
@RequestMapping("api/cards")
public class CardController {

    private final CardService cardService;

    @Autowired
    public CardController(CardService cardService) {
        this.cardService = cardService;
    }

    @PostMapping
    public ResponseEntity<CardDto> createCard(@RequestBody CardDto cardDto){
        return new ResponseEntity<>(this.cardService.createCard(cardDto), HttpStatus.CREATED);
    }

    @GetMapping
    public CardResponse getAllCards(
            @RequestParam(value = "pageNo", defaultValue = DEFAULT_PAGE_NUMBER, required = false) Long pageNo,
            @RequestParam(value = "pageSize", defaultValue = DEFAULT_PAGE_SIZE, required = false) Long pageSize,
            @RequestParam(value = "sortBy", defaultValue = DEFAULT_SORT_BY, required = false) String sortBy,
            @RequestParam(value = "sortDir", defaultValue = DEFAULT_SORT_DIR, required = false) String sortDir

    ){
        return cardService.getAllCards(pageNo, pageSize, sortBy, sortDir);
    }

    @GetMapping("/{id}")
    public ResponseEntity<CardDto> getCardById(@PathVariable(name = "id") Long id){
        return ResponseEntity.ok(cardService.getCardById(id));
    }

    @PutMapping("/{id}")
    public ResponseEntity<CardDto> cardUpdate(@RequestBody CardDto cardDto, @PathVariable(name = "id") long id){
        CardDto cardResponse = cardService.updateCard(cardDto, id);
        return new ResponseEntity<>(cardResponse, HttpStatus.OK);
    }

    @DeleteMapping("/{id}")
    public ResponseEntity<String> deleteCard(@PathVariable(name = "id") long id){
        this.cardService.deleteCardById(id);
        return new ResponseEntity<>("Card entity has been deleted successfully", HttpStatus.OK);
    }
}
