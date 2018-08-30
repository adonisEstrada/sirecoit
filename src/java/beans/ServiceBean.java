/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package beans;

import dao.ArmaDAO;
import dao.ConstantesDAO;
import dao.FevetiDAO;
import dao.ModalidadDAO;
import dao.PersonaDAO;
import dao.RelModalidadRenitDAO;
import dao.RenitDAO;
import dao.TrabajoDAO;
import dao.UsuarioDAO;
import dao.impl.ArmaDAOImpl;
import dao.impl.ConstantesDAOImpl;
import dao.impl.FevetiDAOImpl;
import dao.impl.ModalidadDAOImpl;
import dao.impl.PersonaDAOImpl;
import dao.impl.RelModalidadRenitDAOImpl;
import dao.impl.RenitDAOImpl;
import dao.impl.TrabajoDAOImpl;
import dao.impl.UsuarioDAOImpl;
import dto.Arma;
import dto.Constantes;
import dto.Feveti;
import dto.Modalidad;
import dto.Persona;
import dto.RelModalidadRenit;
import dto.Renit;
import dto.Trabajo;
import dto.Usuario;
import java.io.IOException;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.faces.context.FacesContext;
import util.Correo;
import util.CorreoJava;

/**
 *
 * @author Adonis
 */
public class ServiceBean implements Serializable {

    private ArmaDAO armaDAO = new ArmaDAOImpl();
    private FevetiDAO fevetiDAO = new FevetiDAOImpl();
    private ModalidadDAO modalidadDAO = new ModalidadDAOImpl();
    private PersonaDAO personaDAO = new PersonaDAOImpl();
    private RelModalidadRenitDAO relModalidadRenitDAO = new RelModalidadRenitDAOImpl();
    private RenitDAO renitDAO = new RenitDAOImpl();
    private TrabajoDAO trabajoDAO = new TrabajoDAOImpl();
    private UsuarioDAO usuarioDAO = new UsuarioDAOImpl();
    private ConstantesDAO constantesDAO = new ConstantesDAOImpl();

    public Usuario getUsuario(String nombre, String clave) {
        return usuarioDAO.getUsuarioByNameAndPass(nombre, clave);
    }

    public void savePersona(Persona persona) {
        personaDAO.create(persona);
    }

    public Persona getPersonaByCedula(Integer cedula) {
        return personaDAO.getPersonaByCedula(cedula);
    }

    public List<Persona> getPersonaWithUser() {
        return personaDAO.getPersonWithUser();
    }

    public List<Persona> getPersonaWithoutUser() {
        return personaDAO.getPersonaWithoutUser();
    }

    public void saveUsuario(Usuario usuario) {
        usuarioDAO.create(usuario);
    }

    public Usuario getUserByName(String name) {
        return usuarioDAO.getUserByName(name);
    }

    public Usuario getUserByPersona(Persona persona) {
        return usuarioDAO.getUserByPerson(persona);
    }

    public Persona getPersonByUser(Usuario usuario) {
        return personaDAO.getPersonByUser(usuario);
    }

    public List<RelModalidadRenit> getRelModalidadRenitByRenit(Renit renit) {
        return relModalidadRenitDAO.getRelModalidadRenitByRenit(renit);
    }

    public void saveRenit(Renit renit) {
        renitDAO.create(renit);
    }

    public Renit getRenitByPerson(Persona persona) {
        return renitDAO.getRenitByPerson(persona);
    }

    public void saveFeveti(Feveti feveti) {
        fevetiDAO.create(feveti);
    }

    public Feveti getFevetiByPerson(Persona persona) {
        return fevetiDAO.getFevetiByPerson(persona);
    }

    public void saveTrabajo(Trabajo trabajo) {
        trabajoDAO.create(trabajo);
    }

    public Trabajo getTrabajoByPerson(Persona persona) {
        return trabajoDAO.getTrabajoByPerson(persona);
    }

    public List<Modalidad> getModalidad() {
        return modalidadDAO.getModalidades();
    }

    public Arma getArmaByPerson(Persona persona) {
        return armaDAO.getArmaByPerson(persona);
    }

    public void saveArma(Arma arma) {
        armaDAO.create(arma);
    }

    public void elmininarRelModalidadRenit(RelModalidadRenit relModalidadRenit) {
        relModalidadRenit.setActivo(Boolean.FALSE);
        relModalidadRenitDAO.create(relModalidadRenit);
    }

    public void saveRelModalidadRenit(RelModalidadRenit relModalidadRenit) {
        List<String> modalidades = new ArrayList<String>();
        modalidades.add(Modalidad.P_A.getDescripcion());
        modalidades.add(Modalidad.T_D.getDescripcion());
        modalidades.add(Modalidad.A_E.getDescripcion());
        modalidades.add(Modalidad.E_V.getDescripcion());
        modalidades.add(Modalidad.O_S_E.getDescripcion());

//        String codigo = relModalidadRenit.getCodigo();
        String codigo = relModalidadRenit.getRenit().getNumeroCertificacion();

        relModalidadRenit.setCodigo(modalidades.get(relModalidadRenit.getModalidad().getModalidadId() - 1)
                + "-" + codigo);

        relModalidadRenitDAO.create(relModalidadRenit);
    }

    public void enviarCorreo(Persona persona, Correo correo) {
        CorreoJava.enviarConGMail(persona.getCorreo(), correo.getAsunto(), correo.getCuerpo());
    }

    public void enviarCorreo(List<Persona> personas, Correo correo) {
        String destinatarios = "";
        for (Persona persona : personas) {
            destinatarios = destinatarios.equals("")
                    ? persona.getCorreo() : destinatarios + ", " + persona.getCorreo();
        }
        CorreoJava.enviarConGMail(destinatarios, correo.getAsunto(), correo.getCuerpo());
    }

    public void enviarCorreoTodos(Correo correo) {
        List<Persona> personas = personaDAO.getPersonWithUserAndEmailVerified();
        String destinatarios = "";
        for (Persona persona : personas) {
            destinatarios = destinatarios.equals("")
                    ? persona.getCorreo() : destinatarios + ", " + persona.getCorreo();
        }
        CorreoJava.enviarConGMail(destinatarios, correo.getAsunto(), correo.getCuerpo());
    }

    public Persona cerificarCorreo(String key) {
        return personaDAO.getPersonaByEmailId(key);
    }

    public Constantes getConstantesByKey(String key) {
        return constantesDAO.getConstanteByKey(key);
    }

    public List<Constantes> getConstantes() {
        return constantesDAO.getConstantes();
    }

    public void saveConstantes(Constantes constantes) {
        constantes.setActivo(Boolean.TRUE);
        constantesDAO.create(constantes);
    }

    public void deleteConstantes(Constantes constantes) {
        constantes.setActivo(Boolean.FALSE);
        constantesDAO.create(constantes);
    }

    public List<Persona> getPersonWithUserCertified() {
        return personaDAO.getPersonWithUserCertified();
    }

    public List<Persona> getPersonas() {
        return personaDAO.getPersonas();
    }

    public void validate() {
        Usuario sessionUsuario = (Usuario) FacesContext.getCurrentInstance().getExternalContext().getSessionMap().get("usuario");
        if (sessionUsuario == null || !sessionUsuario.getTipoUsuario().equals(Usuario.USER_ADMIN)) {
            try {
                FacesContext.getCurrentInstance().getExternalContext().redirect("/sirecoit");
            } catch (IOException ex) {
                Logger.getLogger(PersonaManagedBean.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
    }
    public void validateSupervisor(){
        Usuario sessionUsuario = (Usuario) FacesContext.getCurrentInstance().getExternalContext().getSessionMap().get("usuario");
        if (sessionUsuario == null || !sessionUsuario.getTipoUsuario().equals(Usuario.USER_SUPERVISOR)) {
            try {
                FacesContext.getCurrentInstance().getExternalContext().redirect("/sirecoit");
            } catch (IOException ex) {
                Logger.getLogger(PersonaManagedBean.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
    }
}
