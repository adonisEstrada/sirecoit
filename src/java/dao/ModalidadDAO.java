/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import dto.Modalidad;
import java.util.List;

/**
 *
 * @author Adonis
 */
public interface ModalidadDAO extends GenericDAO<Modalidad>{
    public List<Modalidad> getModalidades();
}
