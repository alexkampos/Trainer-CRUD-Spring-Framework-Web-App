/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.example.alexkampos.controllers;

import com.example.alexkampos.model.Trainer;
import com.example.alexkampos.services.TrainerServiceInterface;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author alexi
 */
@Controller
public class TrainerController {

    @Autowired
    TrainerServiceInterface tri;

    @GetMapping("/home")
    public String home() {
        return "index";
    }

    @GetMapping("/add")
    public String add(ModelMap mm) {
        mm.addAttribute("newtrainer", new Trainer());
        return "create";
    }

    @GetMapping("/show")
    public String show(ModelMap mm) {
        mm.addAttribute("trainers", tri.fetchTrainers());
        return "review";
    }
    
    @GetMapping("/updateordelete")
    public String uod(ModelMap mm) {
        mm.addAttribute("trainers", tri.fetchTrainers());
        return "updateordelete";
    }
    
    @GetMapping("/delete")
    public String delete(@RequestParam("trainerid") int trainerId){
        tri.deleteTrainer(trainerId);
    return "redirect:updateordelete";
    }
    
    @PostMapping("/register")
    public String register(ModelMap mm,@Valid @ModelAttribute("newtrainer") Trainer trainer,
            BindingResult br){
        if(br.hasErrors()){
            return "create";
        }
       try{
        tri.saveTrainer(trainer);
       }catch(Exception e){
           return "errorduplicate";
       }
        return "redirect:show";
    }
    
    @GetMapping("/update")
    public String update(ModelMap mm,@RequestParam("trainerid") int trainerId){
        Trainer trainer = tri.fetchTrainerById(trainerId);
        mm.addAttribute("trainer", trainer);
        return "update";
    }
    
    @PostMapping("/doupdate")
    public String doupdate(ModelMap mm,@Valid @ModelAttribute("trainer") Trainer trainer,
            BindingResult br){
        if(br.hasErrors()){
            return "update";
        }
        try{
        tri.saveTrainer(trainer);
        }catch (Exception e){
            return "errorduplicate";
        }
        
        return "redirect:updateordelete";
    }
}
