package dto;
// Generated 29/07/2018 06:44:32 AM by Hibernate Tools 4.3.1


import java.util.Date;

/**
 * Feveti generated by hbm2java
 */
public class Feveti  implements java.io.Serializable {


     private int fevetiId;
     private Persona persona;
     private Boolean miembro;
     private String asociacion;
     private Date fechaIngreso;

    public Feveti() {
    }

	
    public Feveti(Persona persona) {
        this.persona = persona;
    }
    public Feveti(Persona persona, Boolean miembro, String asociacion, Date fechaIngreso) {
       this.persona = persona;
       this.miembro = miembro;
       this.asociacion = asociacion;
       this.fechaIngreso = fechaIngreso;
    }
   
    public int getFevetiId() {
        return this.fevetiId;
    }
    
    public void setFevetiId(int fevetiId) {
        this.fevetiId = fevetiId;
    }
    public Persona getPersona() {
        return this.persona;
    }
    
    public void setPersona(Persona persona) {
        this.persona = persona;
    }
    public Boolean getMiembro() {
        return this.miembro;
    }
    
    public void setMiembro(Boolean miembro) {
        this.miembro = miembro;
    }
    public String getAsociacion() {
        return this.asociacion;
    }
    
    public void setAsociacion(String asociacion) {
        this.asociacion = asociacion;
    }
    public Date getFechaIngreso() {
        return this.fechaIngreso;
    }
    
    public void setFechaIngreso(Date fechaIngreso) {
        this.fechaIngreso = fechaIngreso;
    }




}

