package com.insanelyharsh.BoredomSlayerBackend.Category;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.Optional;

@RestController
@RequestMapping("/api/category")
public class CategoryController {

    @Autowired
    private CategoryService categoryService;

    @GetMapping("")
    Iterable<CategoryModel> getAllCategories(){
        return categoryService.getAllCategories();
    }

    @GetMapping("/{id}")
    Optional<CategoryModel> getCategory(@PathVariable Long id){
        return categoryService.getCategoryByID(id);
    }
}
