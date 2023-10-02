package com.insanelyharsh.BoredomSlayerBackend.Activity;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ActivityService {
    @Autowired
    private ActivityRepository activityRepository;

    public void addActivity(ActivityModel activityModel){
        activityRepository.save(activityModel);
    }
    public ActivityModel generateRandomActivity(){
        long count = activityRepository.count();
        long randomIndex = (long) (Math.random() * count);

        return activityRepository.findById(randomIndex+1).orElse(null);
    }
}
