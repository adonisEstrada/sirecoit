/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import dto.RelModalidadRenit;
import dto.Renit;
import java.util.List;

/**
 *
 * @author Adonis
 */
public interface RelModalidadRenitDAO extends GenericDAO<RelModalidadRenit>{
    public List<RelModalidadRenit> getRelModalidadRenitByRenit(Renit renit);
}
