package com.insanelyharsh.BoredomSlayerBackend.Activity;

import jakarta.persistence.*;
import lombok.*;

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
}
