package com.insanelyharsh.BoredomSlayerBackend.Activity;

import com.insanelyharsh.BoredomSlayerBackend.Category.CategoryModel;
import jakarta.persistence.*;
import lombok.*;


/*
CREATE TABLE activity_data (
    id INT AUTO_INCREMENT PRIMARY KEY,
    activity_name VARCHAR(255) NOT NULL,
    activity_description TEXT,
    category_id INT NOT NULL,
    FOREIGN KEY (category_id) REFERENCES categories(category_id)
);
 */
@Entity
@Table(name = "activity_data")
@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
@Setter
@Getter
public class ActivityModel {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long activityModelId;

    private String activityName;

    private String activityDescription;

    @ManyToOne
    @JoinColumn(name = "category_id")
    private CategoryModel categoryModel;
}
