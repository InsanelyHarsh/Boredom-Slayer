package com.insanelyharsh.BoredomSlayerBackend.Activity;

import org.springframework.data.repository.CrudRepository;

import java.util.Optional;

public interface ActivityRepository extends CrudRepository<ActivityModel,Long> {

}
