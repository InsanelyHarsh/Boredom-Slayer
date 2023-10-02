package com.insanelyharsh.BoredomSlayerBackend.Category;


/*
CREATE TABLE categories (
    category_id INT AUTO_INCREMENT PRIMARY KEY,
    category_name VARCHAR(255) NOT NULL
);

-- Insert categories into the 'categories' table
INSERT INTO categories (category_name) VALUES
    ('Indoor Activity'),
    ('Outdoor Activity'),
    ('Learn New Things'),
    ('With Friends');

 */

import jakarta.persistence.*;
import lombok.*;

@Entity
@Table(name = "categories")
@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
@Setter
@Getter
public class CategoryModel {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long category_id;

    private String category_name;

    CategoryModel(String category_name){
        this.category_name = category_name;
    }
}
