/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.example.alexkampos.services;

import com.example.alexkampos.model.Trainer;
import com.example.alexkampos.repositories.TrainerRepository;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author alexi
 */
@Service
public class TrainerServiceImpl implements TrainerServiceInterface {

    @Autowired
    TrainerRepository tr;

    @Override
    public List<Trainer> fetchTrainers() {
        List<Trainer> trainers = new ArrayList<>();
        trainers = tr.findAll();
        return trainers;
    }
    
    
    @Override
    @Transactional
    public void deleteTrainer(int trainerId) {
        tr.deleteById(trainerId);
    }

    @Override
    @Transactional
    public void saveTrainer(Trainer trainer){
        tr.save(trainer);
    }

    @Override
    public Trainer fetchTrainerById(int trainerId) {
        Optional<Trainer> trainer = tr.findById(trainerId);
        return trainer.get();
    }

}
