package com.insanelyharsh.BoredomSlayerBackend.Category;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
public class CategoryService {

    @Autowired
    private CategoryRepository categoryRepository;

    Iterable<CategoryModel> getAllCategories(){
        return categoryRepository.findAll();
    }

    Optional<CategoryModel> getCategoryByID(Long id){
        return categoryRepository.findById(id);
    }
    void addCategories(){
        if(categoryRepository.count() > 0) return;

        categoryRepository.save(new CategoryModel("Indoor Activity"));
        categoryRepository.save(new CategoryModel("Outdoor Activity"));
        categoryRepository.save(new CategoryModel("Learn New Things"));
        categoryRepository.save(new CategoryModel("With Friends"));
    }
}
