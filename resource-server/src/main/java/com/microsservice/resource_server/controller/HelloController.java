package com.microsservice.resource_server.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("hello")
class HelloController {

    @GetMapping
    public String hello() {
        return "Hello from Resource Server!";
    }

    @GetMapping("greet")
    public String greet(@RequestParam String name) {
        return "Hello, " + name + "!";
    }
}