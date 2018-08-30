/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package beans;

import dto.Persona;
import dto.Usuario;
import java.io.Serializable;
import java.util.UUID;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.ViewScoped;
import javax.faces.context.FacesContext;
import util.Correo;

/**
 *
 * @author Adonis
 */
@ManagedBean
@ViewScoped
public class ResolverCorreoManagedBean implements Serializable{

    ServiceBean serviceBean = new ServiceBean();

    Usuario usuario = (Usuario) FacesContext.getCurrentInstance().getExternalContext().getSessionMap().get("usuario");

    Persona persona = usuario != null ? usuario.getPersona() : null;

    boolean isPersona;
    boolean isUsuario;

    public boolean isIsUsuario() {
        return usuario != null;
    }

    public void setIsUsuario(boolean isUsuario) {
        this.isUsuario = isUsuario;
    }

    Integer cedula;

    public boolean isIsPersona() {
        return persona != null;
    }

    public void setIsPersona(boolean isPersona) {
        this.isPersona = isPersona;
    }

    public Integer getCedula() {
        return cedula;
    }

    public void setCedula(Integer cedula) {
        this.cedula = cedula;
    }

    public Persona getPersona() {
        return persona;
    }

    public void setPersona(Persona persona) {
        this.persona = persona;
    }

    public void verificar() {
        persona = serviceBean.getPersonaByCedula(cedula);
    }

    public void reenviarCorreo() {
        persona.setCorreoConfirmacionId(UUID.randomUUID().toString());
        serviceBean.enviarCorreo(persona, new Correo("Confirmación de correo SIRECOIT",
                "Sigue el siguiente link para continuar al proceso de registro. \n\n"
                + serviceBean.getConstantesByKey("link").getValue() + "/faces/verify.xhtml?key=" + persona.getCorreoConfirmacionId()));
        serviceBean.savePersona(persona);
    }

}
