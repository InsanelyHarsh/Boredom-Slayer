package com.insanelyharsh.BoredomSlayerBackend;

import com.insanelyharsh.BoredomSlayerBackend.Activity.ActivityModel;
import com.insanelyharsh.BoredomSlayerBackend.Activity.ActivityService;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;

@SpringBootApplication
public class BoredomSlayerBackendApplication {

	public static void main(String[] args) {
		SpringApplication.run(BoredomSlayerBackendApplication.class, args);
	}



	@Bean
	public CommandLineRunner commandLineRunner(ActivityService activityService) {
		return (args) -> {
			activityService.addActivity(new ActivityModel(1L,"Watch Insta Reels"));
			activityService.addActivity(new ActivityModel(2L,"Watch YT Shorts"));
			activityService.addActivity(new ActivityModel(3L,"Binge Watch"));
			activityService.addActivity(new ActivityModel(0L,"Play Games!"));
		};
	}
}
