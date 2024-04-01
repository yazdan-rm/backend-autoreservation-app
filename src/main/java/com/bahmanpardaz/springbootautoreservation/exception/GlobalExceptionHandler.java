package com.bahmanpardaz.springbootautoreservation.exception;

import com.bahmanpardaz.springbootautoreservation.dto.ApiExceptionErrorDetails;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.HttpStatusCode;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.MethodArgumentNotValidException;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.context.request.WebRequest;
import org.springframework.web.servlet.mvc.method.annotation.ResponseEntityExceptionHandler;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;

@ControllerAdvice
public class GlobalExceptionHandler extends ResponseEntityExceptionHandler {

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

    public ResponseEntity<Object> handleMethodArgumentNotValid(
            MethodArgumentNotValidException ex,
            HttpHeaders headers,
            HttpStatusCode status,
            WebRequest request) {

        Map<String, Object> errors = new HashMap<>();
        ex.getBindingResult().getAllErrors().forEach((error) -> {
            String fieldName = ((FieldError) error).getField();
            String message = error.getDefaultMessage();
            errors.put(fieldName, message);
            errors.put("StatusCode", HttpStatus.BAD_REQUEST.value());
        });
        return new ResponseEntity<>(errors, HttpStatus.BAD_REQUEST);
    }

}
