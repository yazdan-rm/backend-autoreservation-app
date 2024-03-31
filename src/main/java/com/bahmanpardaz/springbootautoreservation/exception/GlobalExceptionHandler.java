package com.bahmanpardaz.springbootautoreservation.exception;

import com.bahmanpardaz.springbootautoreservation.dto.ApiExceptionErrorDetails;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.context.request.WebRequest;

import java.util.Date;

@ControllerAdvice
public class GlobalExceptionHandler {

    // handle specific exception
    @ExceptionHandler(value = AutoReservationApiException.class)
    public ResponseEntity<ApiExceptionErrorDetails> handleBadRequestException(AutoReservationApiException e,
                                                                              WebRequest webRequest) {
        ApiExceptionErrorDetails apiExceptionErrorDetails = new ApiExceptionErrorDetails(
                e.getMessage(),
                HttpStatus.BAD_REQUEST.value(),
                new Date(),
                webRequest.getDescription(false)
        );

        return ResponseEntity.status(HttpStatus.BAD_REQUEST).body(apiExceptionErrorDetails);
    }

    @ExceptionHandler(value = ResourceNotFoundException.class)
    public ResponseEntity<ApiExceptionErrorDetails> handleResourceNotFoundException(ResourceNotFoundException e,
                                                                                    WebRequest webRequest) {
        ApiExceptionErrorDetails apiExceptionErrorDetails = new ApiExceptionErrorDetails(
                e.getMessage(),
                HttpStatus.NOT_FOUND.value(),
                new Date(),
                webRequest.getDescription(false)
        );

        return ResponseEntity.status(HttpStatus.NOT_FOUND).body(apiExceptionErrorDetails);
    }

    // handle global exception
    @ExceptionHandler(value = {Exception.class})
    public ResponseEntity<ApiExceptionErrorDetails> handleGlobalException(Exception e,
                                                                          WebRequest webRequest) {
        // 1.create payload containing exception details
        ApiExceptionErrorDetails apiExceptionErrorDetails = new ApiExceptionErrorDetails(
                e.getMessage(),
                HttpStatus.INTERNAL_SERVER_ERROR.value(),
                new Date(),
                webRequest.getDescription(false)

        );
        // 2.return response entity
        return new ResponseEntity<>(apiExceptionErrorDetails, HttpStatus.INTERNAL_SERVER_ERROR);
    }


}
