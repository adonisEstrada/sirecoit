/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package beans;

import dto.Persona;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;
import javax.annotation.PostConstruct;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.RequestScoped;
import org.primefaces.model.DefaultStreamedContent;
import org.primefaces.model.StreamedContent;
import util.ReportUtil;

/**
 *
 * @author Adonis
 */
@ManagedBean
@RequestScoped
public class ReporteView {

    ServiceBean serviceBean = new ServiceBean();
    Integer cedula;
    StreamedContent streamedContent;
    String mensaje;

    @PostConstruct
    public void init() {
        validate();
    }

    public StreamedContent getStreamedContent() {
        return generarReporte();
    }

    public void setStreamedContent(StreamedContent streamedContent) {
        this.streamedContent = streamedContent;
    }

    public Integer getCedula() {
        return cedula;
    }

    public void setCedula(Integer cedula) {
        this.cedula = cedula;
    }

    public void validate() {
        serviceBean.validate();
    }

    public StreamedContent generarReporte() {
        if (cedula != null && !cedula.equals(0)) {
            Persona persona = serviceBean.getPersonaByCedula(cedula);
            if (persona != null) {
                try {
                    File file = new File(ReportUtil.generarReporte(persona));
                    InputStream inputStream = new FileInputStream(file);
                    return new DefaultStreamedContent(inputStream, "application/pdf", file.getName());
                } catch (FileNotFoundException ex) {
                    ex.printStackTrace();
                    mensaje = "Ocurrieron problemas al generar el reporte";
                }
            } else {
                mensaje = "La cedula no pertenese a una persona registrada";
            }
        } else {
            mensaje = "El campo no puede estar vacio";
        }
        return null;
    }

    public String getMensaje() {
        return mensaje;
    }

    public void setMensaje(String mensaje) {
        this.mensaje = mensaje;
    }

}
