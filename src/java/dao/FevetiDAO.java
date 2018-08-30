/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import dto.Feveti;
import dto.Persona;

/**
 *
 * @author Adonis
 */
public interface FevetiDAO extends GenericDAO<Feveti> {

    public Feveti getFevetiByPerson(Persona persona);
}
