/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import dto.Persona;
import dto.Renit;

/**
 *
 * @author Adonis
 */
public interface RenitDAO extends GenericDAO<Renit> {

    public Renit getRenitByPerson(Persona persona);
}
