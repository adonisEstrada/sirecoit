/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import dto.Constantes;
import java.util.List;

/**
 *
 * @author Adonis
 */
public interface ConstantesDAO extends GenericDAO<Constantes> {

    public Constantes getConstanteByKey(String key);
    
    public List<Constantes> getConstantes();
}
