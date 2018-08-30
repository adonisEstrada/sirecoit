/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import dto.Persona;
import dto.Usuario;

/**
 *
 * @author Adonis
 */
public interface UsuarioDAO extends GenericDAO<Usuario> {

    public Usuario getUsuarioByNameAndPass(String name, String pass);

    public Usuario getUserByName(String name);

    public Usuario getUserByPerson(Persona persona);
}
