package com.insanelyharsh.BoredomSlayerBackend.Activity;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;


@RestController
@RequestMapping("")
public class ActivityController {

    @Autowired
    private ActivityService activityService;

    @GetMapping("/generate")
    ActivityModel getActivity(){
        return activityService.generateRandomActivity();
    }
    @GetMapping("/generate/test")
    String testAPI(){
        return "Working";
    }
}
