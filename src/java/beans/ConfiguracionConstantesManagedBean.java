/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package beans;

import dto.Constantes;
import java.io.Serializable;
import java.util.List;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.ViewScoped;

/**
 *
 * @author Adonis
 */
@ManagedBean
@ViewScoped
public class ConfiguracionConstantesManagedBean implements Serializable{

    ServiceBean serviceBean = new ServiceBean();

    List<Constantes> listaConstantes = serviceBean.getConstantes();

    Constantes constantes = new Constantes();

    public Constantes getConstantes() {
        return constantes;
    }

    public void setConstantes(Constantes constantes) {
        this.constantes = constantes;
    }

    public List<Constantes> getListaConstantes() {
        return serviceBean.getConstantes();
    }

    public void setListaConstantes(List<Constantes> listaConstantes) {
        this.listaConstantes = listaConstantes;
    }

    public void guardarConstantes() {
        serviceBean.saveConstantes(constantes);
    }

    public void limpiar() {
        constantes = new Constantes();
    }

    public void eliminarConstantes() {
        serviceBean.deleteConstantes(constantes);
    }
    public void validate(){
        serviceBean.validate();
    }
}
