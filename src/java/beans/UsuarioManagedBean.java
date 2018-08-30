/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package beans;

import dto.Arma;
import dto.Feveti;
import dto.Modalidad;
import dto.Persona;
import dto.RelModalidadRenit;
import dto.Renit;
import dto.Trabajo;
import dto.Usuario;
import java.io.IOException;
import java.io.InputStream;
import java.io.Serializable;
import java.util.Date;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.annotation.PostConstruct;
import javax.faces.application.FacesMessage;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;
import javax.faces.bean.ViewScoped;
import javax.faces.context.FacesContext;
import javax.servlet.http.HttpServletResponse;
import org.primefaces.model.DefaultStreamedContent;
import org.primefaces.model.StreamedContent;
import util.Fecha;

/**
 *
 * @author Adonis
 */
@ManagedBean
@ViewScoped
public class UsuarioManagedBean implements Serializable{

    ServiceBean serviceBean = new ServiceBean();

    Usuario usuario;

    RelModalidadRenit relAEliminar;

    Persona persona;
    Feveti feveti;
    Renit renit;
    Trabajo trabajo;
    Arma arma;

    Fecha fechaArmaVencimiento = new Fecha(),
            fechaPersonaNacimiento = new Fecha(),
            fechaRenit = new Fecha(),
            fechaFeveti = new Fecha(),
            fechaArmaFactura = new Fecha();

    String name = "";
    String pass = "";
    String mensaje = "";

    String codigoRenit = "";

    List<Modalidad> modalidades = serviceBean.getModalidad();

    Modalidad modalidad;

    List<RelModalidadRenit> relModalidadRenits;

    public RelModalidadRenit getRelAEliminar() {
        return relAEliminar;
    }

    public void setRelAEliminar(RelModalidadRenit relAEliminar) {
        this.relAEliminar = relAEliminar;
    }

    public Modalidad getModalidad() {
        return modalidad;
    }

    public void setModalidad(Modalidad modalidad) {
        this.modalidad = modalidad;
    }

    public List<Modalidad> getModalidades() {
        return serviceBean.getModalidad();
    }

    public void setModalidades(List<Modalidad> modalidades) {
        this.modalidades = modalidades;
    }

    public List<RelModalidadRenit> getRelModalidadRenits() {
        if (renit == null) {
            if (serviceBean.getRenitByPerson(persona) == null) {
                renit = new Renit(persona, Boolean.FALSE, "", new Date(), Boolean.FALSE);
                serviceBean.saveRenit(renit);
            }
        } else {
            return serviceBean.getRelModalidadRenitByRenit(renit);
        }
        return serviceBean.getRelModalidadRenitByRenit(serviceBean.getRenitByPerson(persona));
    }

    public void setRelModalidadRenits(List<RelModalidadRenit> relModalidadRenits) {
        this.relModalidadRenits = relModalidadRenits;
    }

    public String getCodigoRenit() {
        return codigoRenit;
    }

    public void setCodigoRenit(String codigoRenit) {
        this.codigoRenit = codigoRenit;
    }

    public Fecha getFechaArmaVencimiento() {
        return fechaArmaVencimiento;
    }

    public void setFechaArmaVencimiento(Fecha fechaArmaVencimiento) {
        this.fechaArmaVencimiento = fechaArmaVencimiento;
    }

    public Fecha getFechaPersonaNacimiento() {
        return fechaPersonaNacimiento;
    }

    public void setFechaPersonaNacimiento(Fecha fechaPersonaNacimiento) {
        this.fechaPersonaNacimiento = fechaPersonaNacimiento;
    }

    public Fecha getFechaRenit() {
        return fechaRenit;
    }

    public void setFechaRenit(Fecha fechaRenit) {
        this.fechaRenit = fechaRenit;
    }

    public Fecha getFechaFeveti() {
        return fechaFeveti;
    }

    public void setFechaFeveti(Fecha fechaFeveti) {
        this.fechaFeveti = fechaFeveti;
    }

    public Fecha getFechaArmaFactura() {
        return fechaArmaFactura;
    }

    public void setFechaArmaFactura(Fecha fechaArmaFactura) {
        this.fechaArmaFactura = fechaArmaFactura;
    }

    public Arma getArma() {
        return serviceBean.getArmaByPerson(persona);
    }

    public void setArma(Arma arma) {
        this.arma = arma;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
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

    public Feveti getFeveti() {
        return serviceBean.getFevetiByPerson(persona);
    }

    public void setFeveti(Feveti feveti) {
        this.feveti = feveti;
    }

    public Renit getRenit() {
        return serviceBean.getRenitByPerson(persona);
    }

    public void setRenit(Renit renit) {
        this.renit = renit;
    }

    public Trabajo getTrabajo() {
        return serviceBean.getTrabajoByPerson(persona);
    }

    public void setTrabajo(Trabajo trabajo) {
        this.trabajo = trabajo;
    }

    public Usuario getUsuario() {
        return usuario;
    }

    public void setUsuario(Usuario usuario) {
        this.usuario = usuario;
    }

    public String isUser() {
        Usuario respuesta = null;
        respuesta = serviceBean.getUsuario(name, pass);
        if (respuesta != null) {
//            usuario = respuesta;
            FacesContext.getCurrentInstance().getExternalContext().getSessionMap().put("usuario", respuesta);
//            persona = persona;
        }
        if (name != null && !name.equals("") && pass != null && !pass.equals("")) {
            if (respuesta == null) {
                mensaje = "Usted no es un usuario";
                return null;
            } else if (respuesta.getTipoUsuario().equals(Usuario.USER_ADMIN)) {
                return "administrador";
            } else if (respuesta.getActivo() && respuesta.getAceptado() && respuesta.getTipoUsuario().equals(Usuario.USER_NORMAL)) {
                return "usuario";
            } else if (respuesta.getActivo() && respuesta.getAceptado() && respuesta.getTipoUsuario().equals(Usuario.USER_SUPERVISOR)) {
                return "supervisor";
            } else if (respuesta.getActivo() && !respuesta.getAceptado() && respuesta.getPersona().getCorreoConfirmado()) {
                mensaje = "Usuario ya registrado, esperando aprobación.";
                return null;
            } else if (respuesta.getActivo() && !respuesta.getPersona().getCorreoConfirmado()) {
                mensaje = "Usuario no verificado, ingrese en su bandeja de correo y hagale click al enlace que le enviamos.";
                return null;
            }
        } else {
            mensaje = "Debe llenar todos los campos";
            return null;
        }
        return "notUser";
    }

    public void guardarPersona() {
//        persona.setFechaNacimiento(fechaPersonaNacimiento.getDate());
        serviceBean.savePersona(persona);
    }

    public void guardarFeveti() {
        if (feveti == null) {
            if (serviceBean.getFevetiByPerson(persona) == null) {
                feveti = new Feveti(persona, Boolean.FALSE, "", fechaFeveti.getDate());
            } else {
                feveti = serviceBean.getFevetiByPerson(persona);
            }
        }
//        feveti.setFechaIngreso(fechaFeveti.getDate());
        serviceBean.saveFeveti(feveti);
    }

    public void guardarRenit() {
        if (renit == null) {
            if (serviceBean.getRenitByPerson(persona) == null) {
                renit = new Renit(persona, Boolean.FALSE, "", fechaRenit.getDate(), Boolean.FALSE);
            } else {
                renit = serviceBean.getRenitByPerson(persona);
            }
        }
//        renit.setFechaVencimiento(fechaRenit.getDate());
        serviceBean.saveRenit(renit);
    }

    public void guardarTrabajo() {
        if (trabajo == null) {
            if (serviceBean.getTrabajoByPerson(persona) == null) {
                trabajo = new Trabajo(persona, "", "", "", "", "", "", "", "");
            } else {
                trabajo = serviceBean.getTrabajoByPerson(persona);
            }
        }
        serviceBean.saveTrabajo(trabajo);
    }

    public void guardarArma() {
        if (arma == null) {
            if (serviceBean.getArmaByPerson(persona) == null) {
                arma = new Arma(persona, "", "", "", "", "", "", 0,
                        "", fechaArmaFactura.getDate(), "", "", "", fechaArmaVencimiento.getDate(), Boolean.TRUE);
            } else {
                arma = serviceBean.getArmaByPerson(persona);
            }
        }
//        arma.setFechaFactura(fechaArmaFactura.getDate());
//        arma.setFechaVencimiento(fechaArmaVencimiento.getDate());
        serviceBean.saveArma(arma);
    }

    public void eliminarRelModalidadRenit() {
        if (relAEliminar != null) {
            serviceBean.elmininarRelModalidadRenit(relAEliminar);
        }
    }

    public void guardarRelModalidadRenit() {
        if (modalidad != null) {
            RelModalidadRenit relModalidadRenit = new RelModalidadRenit(modalidad,
                    serviceBean.getRenitByPerson(persona), codigoRenit, true);
            serviceBean.saveRelModalidadRenit(relModalidadRenit);
        }
    }

    public void selectedModalidad(Modalidad modalidad) {
        this.modalidad = modalidad;
    }

    public void cerrarSesion() {
        FacesContext.getCurrentInstance().getExternalContext().invalidateSession();
    }

    public String volver() {
        Usuario sessionUser = (Usuario) FacesContext.getCurrentInstance().getExternalContext().getSessionMap().get("usuario");

        if (sessionUser != null && sessionUser.getTipoUsuario().equals(Usuario.USER_ADMIN)) {
            return "administrador.xhtml";
        } else if (sessionUser != null && sessionUser.getTipoUsuario().equals(Usuario.USER_SUPERVISOR)) {
            return "supervisor.xhtml";
        } else {
            cerrarSesion();
            return "index.xhtml";
        }
    }

    public boolean usuarioNormal() {
        Usuario sessionUsuario = (Usuario) FacesContext.getCurrentInstance().getExternalContext().getSessionMap().get("usuario");
        if (sessionUsuario != null && sessionUsuario.getTipoUsuario().equals(Usuario.USER_NORMAL)) {
            return false;
        } else {
            return true;
        }
    }

//    public void verImagen() {
//        if (usuario != null
//                && persona != null
//                && persona.getImagen() != null
//                && persona.getImagen().length > 1) {
//            HttpServletResponse response
//                    = (HttpServletResponse) FacesContext.getCurrentInstance().getExternalContext().getResponse();
//            try {
//                response.getOutputStream().write(persona.getImagen());
//                response.getOutputStream().close();
//                FacesContext.getCurrentInstance().responseComplete();
//            } catch (IOException ex) {
//                ex.printStackTrace();
//            }
//        }
//    }
    public void construir() {
        Persona sessionPersona = (Persona) FacesContext.getCurrentInstance().getExternalContext().getSessionMap().get("persona");
        if (sessionPersona != null) {
            usuario = serviceBean.getUsuario(sessionPersona.getUsuario().getNombre(), sessionPersona.getUsuario().getClave());
            persona = serviceBean.getPersonByUser(usuario);
        } else {
            usuario = (Usuario) FacesContext.getCurrentInstance().getExternalContext().getSessionMap().get("usuario");
            persona = serviceBean.getPersonByUser(usuario);
        }
    }
}
