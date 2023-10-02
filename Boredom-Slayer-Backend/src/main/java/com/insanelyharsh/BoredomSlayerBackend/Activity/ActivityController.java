package com.insanelyharsh.BoredomSlayerBackend.Activity;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.Optional;


@RestController
@RequestMapping("/generate")
public class ActivityController {

    @Autowired
    private ActivityService activityService;

    @GetMapping("")
    ActivityModel getActivity(){
        return activityService.generateRandomActivity();
    }

    @GetMapping("/{categoryId}")
    Optional<ActivityModel> getActivityByCategory(@PathVariable Long categoryId){
        return activityService.getForCategory(categoryId);
    }
}
