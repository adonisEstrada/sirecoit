/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package beans;

import dto.Persona;
import dto.Usuario;
import java.io.IOException;
import java.io.Serializable;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.annotation.PostConstruct;
import javax.faces.application.FacesMessage;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.ManagedProperty;
import javax.faces.bean.ViewScoped;
import javax.faces.context.FacesContext;
import org.primefaces.model.UploadedFile;

/**
 *
 * @author Adonis
 */
@ManagedBean
@ViewScoped
public class ImagenManagedBean implements Serializable {

    ServiceBean serviceBean = new ServiceBean();

    UploadedFile uploadedFile;

    Usuario usuario;

    Persona persona;

    String mensaje;

    @PostConstruct
    public void init() {
        persona = (Persona) FacesContext.getCurrentInstance().getExternalContext().getSessionMap().get("persona");
        usuario = (Usuario) FacesContext.getCurrentInstance().getExternalContext().getSessionMap().get("usuario");
        if (persona != null) {
            usuario = serviceBean.getUserByPersona(persona);
        } else if (usuario != null) {
            persona = serviceBean.getPersonByUser(usuario);
        }
    }

    public String getMensaje() {
        return mensaje;
    }

    public void setMensaje(String mensaje) {
        this.mensaje = mensaje;
    }

    public Persona getPersona() {
        return persona;
    }

    public void setPersona(Persona persona) {
        this.persona = persona;
    }

    public Usuario getUsuario() {
        return usuario;
    }

    public void setUsuario(Usuario usuario) {
        this.usuario = usuario;
    }

    public UploadedFile getUploadedFile() {
        return uploadedFile;
    }

    public void setUploadedFile(UploadedFile uploadedFile) {
        this.uploadedFile = uploadedFile;
    }

    public void guardarImagen() {
        if (uploadedFile != null && uploadedFile.getContents().length > 0
                && usuario != null && usuario.getPersona() != null) {
            if (uploadedFile.getContentType().equals("image/jpeg") || uploadedFile.getContentType().equals("image/png")) {
                if (uploadedFile.getSize() < 1000000) {
                    persona.setImagen(uploadedFile.getContents());
                    serviceBean.savePersona(persona);
                    try {
                        FacesContext.getCurrentInstance().getExternalContext().redirect("usuario.xhtml");
                    } catch (IOException ex) {
                        ex.printStackTrace();
                    }
                } else {
                    mensaje = "El tamaño del achivo es muy grande, máximo permitido 1MB";
                }
            } else {
                mensaje = "Tipo de archivo no permitido. Solo JPG y PNG";
            }
        } else {
            mensaje = "No se eligió un archivo";
        }
    }

    public String obtenerNombre() {
        if (usuario != null) {
            return usuario.getPersona().getNombre();
        }
        return "Usuario no esncontrado.";
    }

    public void validate() {
        serviceBean.validate();
    }
}
