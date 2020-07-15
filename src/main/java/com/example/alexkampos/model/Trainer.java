/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.example.alexkampos.model;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author alexi
 */
@Entity
@Table(name = "trainers")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Trainer.findAll", query = "SELECT t FROM Trainer t"),
    @NamedQuery(name = "Trainer.findByTrainerId", query = "SELECT t FROM Trainer t WHERE t.trainerId = :trainerId"),
    @NamedQuery(name = "Trainer.findByFirstName", query = "SELECT t FROM Trainer t WHERE t.firstName = :firstName"),
    @NamedQuery(name = "Trainer.findByLastName", query = "SELECT t FROM Trainer t WHERE t.lastName = :lastName"),
    @NamedQuery(name = "Trainer.findByAge", query = "SELECT t FROM Trainer t WHERE t.age = :age")})
public class Trainer implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "trainer_id")
    private Integer trainerId;
    @Basic(optional = false)
    @Column(name = "first_name")
    @Size(min=2, max=30, message="-First name must be between 2-30 letters!")
    @NotBlank(message = "-This field is mandatory!")
    @Pattern (regexp = "^[^-\\s][a-zA-Z_\\s-]+$", message = "-Not a compatible type of a first name!")
    private String firstName;
    @Basic(optional = false)
    @Column(name = "last_name")
    @Size(min=2, max=30, message = "-Last name must be between 2-30 letters!")
    @NotBlank(message = "-This field is mandatory!")
    @Pattern (regexp = "^[^-\\s][a-zA-Z_\\s-]+$", message = "-Not a compatible type of a last name!")
    private String lastName;
    @Basic(optional = false)
    @Column(name = "age")
    @NotNull(message = "-This field is mandatory and should be consisted by numbers only!")
    @Min(value=18, message = "-Trainer must be over 18 years old!")
    @Max(value=100, message = "-Trainer must be alive!")
    private Integer age;

    public Trainer() {
    }

    public Trainer(Integer trainerId) {
        this.trainerId = trainerId;
    }

    public Trainer(Integer trainerId, String firstName, String lastName, Integer age) {
        this.trainerId = trainerId;
        this.firstName = firstName;
        this.lastName = lastName;
        this.age = age;
    }

    public Integer getTrainerId() {
        return trainerId;
    }

    public void setTrainerId(Integer trainerId) {
        this.trainerId = trainerId;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public Integer getAge() {
        return age;
    }

    public void setAge(Integer age) {
        this.age = age;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (trainerId != null ? trainerId.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        if (!(object instanceof Trainer)) {
            return false;
        }
        Trainer other = (Trainer) object;
        if ((this.trainerId == null && other.trainerId != null) || (this.trainerId != null && !this.trainerId.equals(other.trainerId))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.example.alexkampos.model.Trainer[ trainerId=" + trainerId + " ]";
    }
    
}
