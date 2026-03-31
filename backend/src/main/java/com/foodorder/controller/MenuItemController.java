package com.foodorder.controller;

import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/menu-items")
public class MenuItemController {

    // Add methods to handle HTTP requests (GET, POST, PUT, DELETE)

    @GetMapping
    public String getAllMenuItems() {
        return "List of menu items"; // Placeholder response
    }

    @PostMapping
    public String createMenuItem() {
        return "Menu item created"; // Placeholder response
    }

    // Add more methods as needed
}