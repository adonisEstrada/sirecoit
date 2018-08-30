/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package beans;

import dto.Persona;
import java.io.Serializable;
import javax.annotation.PostConstruct;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.ManagedProperty;
import javax.faces.bean.RequestScoped;

/**
 *
 * @author Adonis
 */
@ManagedBean
@RequestScoped
public class VerificarCorreoManagedBean implements Serializable {

    @ManagedProperty(value = "#{param.key}")
    private String key;
    private boolean verificado;

    private ServiceBean serviceBean = new ServiceBean();
    Persona persona;

    @PostConstruct
    public void init() {
        persona = serviceBean.cerificarCorreo(key);
        verificado = persona != null;
        if (verificado) {
            persona.setCorreoConfirmado(verificado);
            serviceBean.savePersona(persona);
        }
    }

    public String getKey() {
        return key;
    }

    public void setKey(String key) {
        this.key = key;
    }

    public boolean isVerificado() {
        return verificado;
    }

    public void setVerificado(boolean verificado) {
        this.verificado = verificado;
    }

    public String getLink() {
        return serviceBean.getConstantesByKey("link").getValue();
    }
}
