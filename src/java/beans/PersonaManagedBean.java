/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package beans;

import dto.Arma;
import dto.Feveti;
import dto.Persona;
import dto.RelModalidadRenit;
import dto.Renit;
import dto.Trabajo;
import dto.Usuario;
import java.io.IOException;
import java.io.Serializable;
import java.time.LocalDate;
import java.time.Period;
import java.time.ZoneId;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.UUID;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.annotation.PostConstruct;
import javax.faces.application.FacesMessage;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;
import javax.faces.bean.ViewScoped;
import javax.faces.context.FacesContext;
import org.primefaces.event.CellEditEvent;
import util.Correo;

/**
 *
 * @author Adonis
 */
@ManagedBean
@ViewScoped
public class PersonaManagedBean implements Serializable {

    ServiceBean serviceBean = new ServiceBean();

    Persona persona;

    List<Persona> personaFiltradas;

    List<Persona> personasWithUser = serviceBean.getPersonaWithUser();

    List<Persona> personaWithoutUser = serviceBean.getPersonaWithoutUser();

    List<Persona> personasWithUserCertified = serviceBean.getPersonWithUserCertified();

    List<Persona> personasParaBuscador = serviceBean.getPersonas();

    Usuario usuario = new Usuario();

    Persona personaSelected;

    List<RelModalidadRenit> relModalidadRenits;

    Persona personaAEliminar;

    String clave = "";
    String confirmarClave = "";

    String mensaje = "";

    @PostConstruct
    public void init() {
        this.persona = new Persona();
    }

    public List<Persona> getPersonasParaBuscador() {
        return personasParaBuscador;
    }

    public void setPersonasParaBuscador(List<Persona> personasParaBuscador) {
        this.personasParaBuscador = personasParaBuscador;
    }

    public void construir() {
        this.personasWithUser = serviceBean.getPersonaWithUser();
        this.personaWithoutUser = serviceBean.getPersonaWithoutUser();
        this.personasWithUserCertified = serviceBean.getPersonWithUserCertified();
    }

    public List<Persona> getPersonaFiltradas() {
        return personaFiltradas;
    }

    public void setPersonaFiltradas(List<Persona> personaFiltradas) {
        this.personaFiltradas = personaFiltradas;
    }

    public Persona getPersona() {
        return persona;
    }

    public void setPersona(Persona persona) {
        this.persona = persona;
    }

    public List<Persona> getPersonasWithUser() {
        return personasWithUser;
    }

    public void setPersonasWithUser(List<Persona> personasWithUser) {
        this.personasWithUser = personasWithUser;
    }

    public List<Persona> getPersonaWithoutUser() {
        return personaWithoutUser;
    }

    public void setPersonaWithoutUser(List<Persona> personaWithoutUser) {
        this.personaWithoutUser = personaWithoutUser;
    }

    public List<Persona> getPersonasWithUserCertified() {
        return personasWithUserCertified;
    }

    public void setPersonasWithUserCertified(List<Persona> personasWithUserCertified) {
        this.personasWithUserCertified = personasWithUserCertified;
    }

    public Usuario getUsuario() {
        return usuario;
    }

    public void setUsuario(Usuario usuario) {
        this.usuario = usuario;
    }

    public Persona getPersonaSelected() {
        return personaSelected;
    }

    public void setPersonaSelected(Persona personaSelected) {
        this.personaSelected = personaSelected;
    }

    public List<RelModalidadRenit> getRelModalidadRenits() {
        return relModalidadRenits;
    }

    public void setRelModalidadRenits(List<RelModalidadRenit> relModalidadRenits) {
        this.relModalidadRenits = relModalidadRenits;
    }

    public Persona getPersonaAEliminar() {
        return personaAEliminar;
    }

    public void setPersonaAEliminar(Persona personaAEliminar) {
        this.personaAEliminar = personaAEliminar;
    }

    public String getClave() {
        return clave;
    }

    public void setClave(String clave) {
        this.clave = clave;
    }

    public String getConfirmarClave() {
        return confirmarClave;
    }

    public void setConfirmarClave(String confirmarClave) {
        this.confirmarClave = confirmarClave;
    }

    public String getMensaje() {
        return mensaje;
    }

    public void setMensaje(String mensaje) {
        this.mensaje = mensaje;
    }

    public void confirmar() {
        if (persona != null
                && persona.getNombre() != null
                && !persona.getNombre().equals("")
                && persona.getCedula() != null
                && !persona.getCedula().equals("")
                && persona.getCorreo() != null
                && !persona.getCorreo().equals("")
                && clave != null
                && !clave.equals("")
                && confirmarClave != null
                && !confirmarClave.equals("")) {
            if (clave.equals(confirmarClave)) {
                if (serviceBean.getPersonaByCedula(persona.getCedula()) == null) {
                    if (serviceBean.getUserByName(usuario.getNombre()) == null) {
                        guardarPersona();
                        mensaje = "guardado correctamente";
                    } else {
                        mensaje = "El nombre de usuario ya esta en uso.";
                    }
                } else {
                    mensaje = "Usted ya es un usuario";
                }
            } else {
                mensaje = "Las claves deben coincidir";
            }
        } else {
            mensaje = "no puede dejar campos vacios";
        }
    }

    private void guardarPersona() {
        usuario.setClave(clave);
        usuario.setActivo(Boolean.TRUE);
        usuario.setAceptado(Boolean.FALSE);
        usuario.setTipoUsuario(Usuario.USER_NORMAL);
        persona.setUsuario(usuario);
        persona.setCorreoConfirmado(Boolean.FALSE);
        persona.setCorreoConfirmacionId(UUID.randomUUID().toString());
        usuario.setPersona(persona);

        Arma arma = new Arma(persona, "", "", "", "", "", "", 0, "", new Date(), "", "", "", new Date(), Boolean.FALSE);
        Feveti feveti = new Feveti(persona, Boolean.FALSE, "", new Date());
        Renit renit = new Renit(persona, Boolean.FALSE, "", new Date(), Boolean.FALSE);
        Trabajo trabajo = new Trabajo(persona, "", "", "", "", "", "", "", "");

        serviceBean.savePersona(persona);
        serviceBean.saveUsuario(usuario);
        serviceBean.saveArma(arma);
        serviceBean.saveFeveti(feveti);
        serviceBean.saveRenit(renit);
        serviceBean.saveTrabajo(trabajo);
        serviceBean.enviarCorreo(persona, new Correo("Confirmación de correo SIRECOIT",
                "Sigue el siguiente link para continuar al proceso de registro. \n\n"
                + serviceBean.getConstantesByKey("link").getValue() + "/faces/verify.xhtml?key=" + persona.getCorreoConfirmacionId()));
    }

    public void aceptarUsuario(Persona persona) {
        if (persona != null) {
            Usuario selectecUser = serviceBean.getUserByPersona(persona);
            selectecUser.setAceptado(Boolean.TRUE);
            selectecUser.setTipoUsuario(Usuario.USER_NORMAL);
            serviceBean.saveUsuario(selectecUser);
        }
    }

    public void eliminarUsuario(Persona persona) {
        if (persona != null) {
            Usuario selectedUser = serviceBean.getUserByPersona(persona);
            selectedUser.setActivo(Boolean.FALSE);
            serviceBean.saveUsuario(selectedUser);
        }
    }

    public String registrado() {
        if (mensaje.equals("guardado correctamente")) {
            return "index";
        }
        return null;
    }

    public void cerrarSecion() {
        FacesContext.getCurrentInstance().getExternalContext().invalidateSession();
    }

    public String descripcionCertificados(Persona persona) {
        String resultado = "";
        int cantidad = 0;
        for (RelModalidadRenit relModalidadRenit : serviceBean.getRelModalidadRenitByRenit(persona.getRenit())) {
            if (relModalidadRenit.getModalidad() != null) {
                resultado = resultado.equals("") ? relModalidadRenit.getModalidad().getDescripcion()
                        : resultado + ", " + relModalidadRenit.getModalidad().getDescripcion();
            }
            cantidad = cantidad + 1;
        }
        return "Tiene " + cantidad + ": " + resultado;
    }

    public String getTelefono(Persona persona) {
        if (persona.getTelefonoPersonal() != null && !persona.getTelefonoPersonal().equals("")) {
            return "Telefono personal : " + persona.getTelefonoPersonal();
        } else if (persona.getTelefonoFamiliar() != null && !persona.getTelefonoFamiliar().equals("")) {
            return "Telefono familiar : " + persona.getTelefonoFamiliar();
        } else if (persona.getTelefonoCantv() != null && !persona.getTelefonoCantv().equals("")) {
            return "Telefono CANTV : " + persona.getTelefonoCantv();
        } else {
            return "No tiene telefonos registrados";
        }
    }

    public String getEdad(Persona persona) {
        if (persona.getFechaNacimiento() != null) {
            LocalDate fullBirthday = persona.getFechaNacimiento().toInstant().atZone(ZoneId.systemDefault()).toLocalDate();
            LocalDate now = LocalDate.now();
            int period = Period.between(fullBirthday, now).getYears();
            return period + " años";
        }
        return "";
    }

    public void aplicarCambios() {
//        List<Feveti> listaFeveti = new ArrayList<Feveti>();
//        List<Renit> listaRenit = new ArrayList<Renit>();
//        List<Trabajo> listaTrabajo = new ArrayList<Trabajo>();
//        List<Usuario> listaUsuario = new ArrayList<Usuario>();
//
//        for (Persona persona1 : personasWithUser) {
//            listaFeveti.add(persona1.getFeveti());
//            listaRenit.add(persona1.getRenit());
//            listaTrabajo.add(persona1.getTrabajo());
//            listaUsuario.add(persona1.getUsuario());
//            serviceBean.savePersona(persona1);
//        }
//        for (Usuario usuario1 : listaUsuario) {
//            serviceBean.saveUsuario(usuario1);
//        }
//        for (Feveti feveti : listaFeveti) {
//            serviceBean.saveFeveti(feveti);
//        }
//
//        for (Trabajo trabajo : listaTrabajo) {
//            serviceBean.saveTrabajo(trabajo);
//        }
    }

//    public void aplicarCambiosUsuariosCertificados() {
//        List<Feveti> listaFeveti = new ArrayList<Feveti>();
//        List<Renit> listaRenit = new ArrayList<Renit>();
//        List<Trabajo> listaTrabajo = new ArrayList<Trabajo>();
//        List<Usuario> listaUsuario = new ArrayList<Usuario>();
//
//        for (Persona persona1 : personasWithUserCertified) {
//            listaFeveti.add(persona1.getFeveti());
//            listaRenit.add(persona1.getRenit());
//            listaTrabajo.add(persona1.getTrabajo());
//            listaUsuario.add(persona1.getUsuario());
//            serviceBean.savePersona(persona1);
//        }
//        for (Usuario usuario1 : listaUsuario) {
//            serviceBean.saveUsuario(usuario1);
//        }
//        for (Feveti feveti : listaFeveti) {
//            serviceBean.saveFeveti(feveti);
//        }
//
//        for (Trabajo trabajo : listaTrabajo) {
//            serviceBean.saveTrabajo(trabajo);
//        }
//    }
//    public void agregarPersona() {
//        Persona personaNueva = new Persona(0, 0, "", "", new Date(), "", "", "", "", "", "", "", "", "", "", null, null, null, null, null);
//        personaNueva.setCorreoConfirmado(Boolean.TRUE);
//        personaNueva.setCorreoConfirmacionId("");
//
////        Arma arma = new Arma(personaNueva);
////        Feveti feveti = new Feveti(personaNueva);
////        Renit renit = new Renit(personaNueva);
////        Trabajo trabajo = new Trabajo(personaNueva);
//        Arma arma = new Arma(personaNueva, "", "", "", "", "", "", 0, "", new Date(), "", "", "", new Date(), Boolean.FALSE);
//        Feveti feveti = new Feveti(personaNueva, Boolean.FALSE, "", new Date());
//        Renit renit = new Renit(personaNueva, Boolean.FALSE, "", new Date(), Boolean.FALSE);
//        Trabajo trabajo = new Trabajo(personaNueva, "", "", "", "", "", "", "", "");
//
//        Usuario usuario = new Usuario(personaNueva);
//        usuario.setActivo(Boolean.TRUE);
//        usuario.setAceptado(Boolean.TRUE);
//
//        personaNueva.setArma(arma);
//        personaNueva.setFeveti(feveti);
//        personaNueva.setRenit(renit);
//        personaNueva.setTrabajo(trabajo);
//        personaNueva.setUsuario(usuario);
//        serviceBean.savePersona(personaNueva);
//        serviceBean.saveFeveti(feveti);
//        serviceBean.saveRenit(renit);
//        serviceBean.saveTrabajo(trabajo);
//        serviceBean.saveUsuario(usuario);
//        serviceBean.saveArma(arma);
//    }
//    public void agregarPersonaCertificado() {
//        Persona personaNueva = new Persona(0, 0, "", "", new Date(), "", "", "", "", "", "", "", "", "", "", null, null, null, null, null);
//        personaNueva.setCorreoConfirmado(Boolean.TRUE);
//        personaNueva.setCorreoConfirmacionId("");
//
////        Arma arma = new Arma(personaNueva);
////        Feveti feveti = new Feveti(personaNueva);
////        Renit renit = new Renit(personaNueva);
////        Trabajo trabajo = new Trabajo(personaNueva);
//        Arma arma = new Arma(personaNueva, "", "", "", "", "", "", 0, "", new Date(), "", "", "", new Date(), Boolean.FALSE);
//        Feveti feveti = new Feveti(personaNueva, Boolean.FALSE, "", new Date());
//        Renit renit = new Renit(personaNueva, Boolean.TRUE, "", new Date(), Boolean.FALSE);
//        Trabajo trabajo = new Trabajo(personaNueva, "", "", "", "", "", "", "", "");
//
//        Usuario usuario = new Usuario(personaNueva);
//        usuario.setActivo(Boolean.TRUE);
//        usuario.setAceptado(Boolean.TRUE);
//
//        personaNueva.setArma(arma);
//        personaNueva.setFeveti(feveti);
//        personaNueva.setRenit(renit);
//        personaNueva.setTrabajo(trabajo);
//        personaNueva.setUsuario(usuario);
//        serviceBean.savePersona(personaNueva);
//        serviceBean.saveFeveti(feveti);
//        serviceBean.saveRenit(renit);
//        serviceBean.saveTrabajo(trabajo);
//        serviceBean.saveUsuario(usuario);
//        serviceBean.saveArma(arma);
//    }
    public void setSessionPersona(Persona persona) {
        FacesContext.getCurrentInstance().getExternalContext().getSessionMap().put("persona", persona);

        try {
            FacesContext.getCurrentInstance().getExternalContext().redirect("/sirecoit/faces/usuario.xhtml");
        } catch (IOException ex) {
            Logger.getLogger(PersonaManagedBean.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    public void validate(){
        serviceBean.validate();
    }
    public void validateSupervisor(){
        
    }
}
