/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package beans;

import dto.Persona;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import javax.faces.application.FacesMessage;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.ViewScoped;
import javax.faces.context.FacesContext;
import static org.primefaces.component.datatable.DataTable.PropertyKeys.summary;
import util.Correo;

/**
 *
 * @author Adonis
 */
@ManagedBean
@ViewScoped
public class CorreoManagedBean implements Serializable{

    ServiceBean serviceBean = new ServiceBean();

    List<Persona> personas = serviceBean.getPersonaWithUser();

    List<Persona> personaSeleccionadas = new ArrayList<Persona>();

    Persona personaSelected;

    Correo correo = new Correo();

    public Correo getCorreo() {
        return correo;
    }

    public void setCorreo(Correo correo) {
        this.correo = correo;
    }

    public Persona getPersonaSelected() {
        return personaSelected;
    }

    public void setPersonaSelected(Persona personaSelected) {
        this.personaSelected = personaSelected;
    }

    public List<Persona> getPersonaSeleccionadas() {
        return personaSeleccionadas;
    }

    public void setPersonaSeleccionadas(List<Persona> personaSeleccionadas) {
        this.personaSeleccionadas = personaSeleccionadas;
    }

    public List<Persona> getPersonas() {
        return personas;
    }

    public void setPersonas(List<Persona> personas) {
        this.personas = personas;
    }

    public String getPersonasSeleccionadas() {
        String resultado = "";
        for (Persona persona : personaSeleccionadas) {
            resultado = resultado.equals("") ? persona.getCorreo() : resultado + ", " + persona.getCorreo();
        }
        return resultado;
    }

    public void limpiar() {
        personaSeleccionadas.clear();
    }

    public void enviarAVarios() {
        if (correo != null && !personaSeleccionadas.isEmpty()) {
            serviceBean.enviarCorreo(personaSeleccionadas, correo);
        }
    }

    public void enviarAUNo() {
        if (personaSelected != null && correo != null) {
            serviceBean.enviarCorreo(personaSelected, correo);
        }
    }

    public void enviarATodos() {
        if (correo != null) {
            serviceBean.enviarCorreoTodos(correo);
        }
    }

    public void agregarPersona(Persona persona) {
        this.personaSeleccionadas.add(persona);
    }

//    public void addMessage() {
//        FacesContext.getCurrentInstance().addMessage(null, new FacesMessage("Enviados correctamente."));
//    }
}
