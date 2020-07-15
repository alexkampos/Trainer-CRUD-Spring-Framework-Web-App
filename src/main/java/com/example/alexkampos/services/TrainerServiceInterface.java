/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.example.alexkampos.services;

import com.example.alexkampos.model.Trainer;
import java.util.List;

/**
 *
 * @author alexi
 */
public interface TrainerServiceInterface {
    
    public List<Trainer> fetchTrainers();
    
    public void deleteTrainer(int trainerId);
    
    public void saveTrainer(Trainer trainer);
    
    public Trainer fetchTrainerById(int trainerId);
}
