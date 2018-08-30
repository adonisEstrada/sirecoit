package dto;
// Generated 29/07/2018 06:44:32 AM by Hibernate Tools 4.3.1



/**
 * RelModalidadRenit generated by hbm2java
 */
public class RelModalidadRenit  implements java.io.Serializable {


     private int relModalidadRenitId;
     private Modalidad modalidad;
     private Renit renit;
     private String codigo;
     private Boolean activo;

    public RelModalidadRenit() {
    }

    public RelModalidadRenit(Modalidad modalidad, Renit renit, String codigo, Boolean activo) {
       this.modalidad = modalidad;
       this.renit = renit;
       this.codigo = codigo;
       this.activo = activo;
    }
   
    public int getRelModalidadRenitId() {
        return this.relModalidadRenitId;
    }
    
    public void setRelModalidadRenitId(int relModalidadRenitId) {
        this.relModalidadRenitId = relModalidadRenitId;
    }
    public Modalidad getModalidad() {
        return this.modalidad;
    }
    
    public void setModalidad(Modalidad modalidad) {
        this.modalidad = modalidad;
    }
    public Renit getRenit() {
        return this.renit;
    }
    
    public void setRenit(Renit renit) {
        this.renit = renit;
    }
    public String getCodigo() {
        return this.codigo;
    }
    
    public void setCodigo(String codigo) {
        this.codigo = codigo;
    }
    public Boolean getActivo() {
        return this.activo;
    }
    
    public void setActivo(Boolean activo) {
        this.activo = activo;
    }




}


