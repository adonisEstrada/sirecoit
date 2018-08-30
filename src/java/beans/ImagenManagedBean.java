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
public class ImagenManagedBean implements Serializable{

    ServiceBean serviceBean = new ServiceBean();

    UploadedFile uploadedFile;

    Usuario usuario = (Usuario) FacesContext.getCurrentInstance().getExternalContext().getSessionMap().get("usuario");

    Persona persona;

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

//    public void guardarImagen() {
//        if (uploadedFile != null && usuario != null && usuario.getPersona() != null) {
//
//            usuario.getPersona().setImagen(uploadedFile.getContents());
//            serviceBean.savePersona(usuario.getPersona());
//
//            FacesContext.getCurrentInstance().addMessage(null, new FacesMessage("Archivo subido exitosamente!."));
//        }
//    }

    public String obtenerNombre() {
        if (usuario != null) {
            return usuario.getPersona().getNombre();
        }
        return "Usuario no esncontrado.";
    }
    public void validate(){
        serviceBean.validate();
    }
}
