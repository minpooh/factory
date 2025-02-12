package com.minpooh.factory.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MainController {
    @GetMapping(value = "")
    public String main() {
        return "main";
    }

    @GetMapping(value = "/about")
    public String about() {
        return "about";
    }

    @GetMapping(value = "/item")
    public String item() {
        return "item";
    }

    @GetMapping(value = "/community")
    public String community() {
        return "community";
    }
}