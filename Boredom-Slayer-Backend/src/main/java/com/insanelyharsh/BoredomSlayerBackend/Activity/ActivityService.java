package com.insanelyharsh.BoredomSlayerBackend.Activity;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Optional;

@Service
public class ActivityService {
    @Autowired
    private ActivityRepository activityRepository;

    private Long prevActivity = -1L;
    private Long prevActivityByCategory = -1L;

    public void addActivity(ActivityModel activityModel){
        activityRepository.save(activityModel);
    }
    public ActivityModel generateRandomActivity(){
        long count = activityRepository.count();
        long randomIndex = (long) (Math.random() * count);
        while(randomIndex == prevActivity){
            randomIndex = (long) (Math.random() * count);
        }
        prevActivity = randomIndex;
        return activityRepository.findById(randomIndex+1).orElse(null);
    }


    public Optional<ActivityModel> getForCategory(Long id){
        Iterable<ActivityModel> activityModels = activityRepository.findAll();

        List<ActivityModel> tmp = new ArrayList<ActivityModel>();  ;

        activityModels.forEach(activityModel -> {
            if(activityModel.getCategoryModel().getCategory_id() == id){
                tmp.add(activityModel);
            }
        });

        int count = tmp.size();
        Long randomIndex = (long) (Math.random() * count);

        while(randomIndex.equals(prevActivityByCategory)){
            randomIndex = (long) (Math.random() * count);
        }
        prevActivityByCategory = randomIndex;
        return Optional.ofNullable(tmp.get(Math.toIntExact(randomIndex)));
    }
}
