/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import dto.Persona;
import dto.Trabajo;

/**
 *
 * @author Adonis
 */
public interface TrabajoDAO extends GenericDAO<Trabajo> {

    public Trabajo getTrabajoByPerson(Persona persona);
}
