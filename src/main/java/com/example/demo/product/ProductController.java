package com.example.demo.product;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@CrossOrigin(origins = "*")
public class ProductController {
    @Autowired
    ProductServices productServices;


    @GetMapping("/test")
    ResponseEntity<String> age(@RequestParam("yearOfBirth") int yearOfBirth) {

        if (yearOfBirth > 0) {
            return new ResponseEntity<>(
                    "Year of birth cannot be in the future",
                    HttpStatus.BAD_REQUEST);
        }
        return new ResponseEntity<>(
                "Your age is " + yearOfBirth,
                HttpStatus.OK);
    }

    @GetMapping("/header")
    ResponseEntity<String> age() {
        HttpHeaders httpHeaders = new HttpHeaders();
        httpHeaders.add("name", "Kien");
        return new ResponseEntity<>("my name is" , httpHeaders, HttpStatus.OK);
    }

    @GetMapping("/api/v1/products")
    public ResponseEntity<List<ProductEntity>> findAll() {
        return ResponseEntity.ok(productServices.findAll());
    }

    @GetMapping("/api/v1/products-header")
    public ResponseEntity<ProductEntity> findAll(@RequestHeader(name = "id", required = false) int id) {
        return ResponseEntity.ok(productServices.findById(id));
    }


    @GetMapping("/api/v1/products/{id}")
    public ResponseEntity<ProductEntity> findById(@PathVariable("id") int id) {
        ProductEntity productEntity = productServices.findById(id);
        return ResponseEntity.ok(productEntity);

    }

    //Page
    @GetMapping("/api/v1/products/")
    public ResponseEntity<PageDTO> findPageDTO(@RequestParam(name = "activePage") int activePage,
                                                       @RequestParam(name = "pageSize") int pageSize) {
        return ResponseEntity.ok(productServices.findAllPage(activePage, pageSize));
    }

    @PostMapping("/api/v1/products")
    public ResponseEntity<ProductEntity> add( @RequestBody ProductEntity productEntity) {
        return ResponseEntity.ok(productServices.addKK(productEntity));
    }

    @PutMapping("/api/v1/products/{id}")
    public ResponseEntity<Boolean> updataData(@PathVariable("id") int id, @RequestBody ProductEntity productEntity) {
        return ResponseEntity.ok(productServices.updateData(id, productEntity));
    }

}
