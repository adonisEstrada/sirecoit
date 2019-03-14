package dto;
// Generated 21/07/2018 03:28:31 AM by Hibernate Tools 4.3.1

import java.util.Date;

/**
 * Persona generated by hbm2java
 */
public class Persona implements java.io.Serializable {

    private int personaId;
    private Integer cedula;
    private String nombre;
    private String rif;
    private Date fechaNacimiento;
    private String lugarNacimiento;
    private String nacionalidad;
    private String direccionHabitacion;
    private String parroquia;
    private String municipio;
    private String estado;
    private String telefonoCantv;
    private String telefonoPersonal;
    private String telefonoFamiliar;
    private String correo;
    private Trabajo trabajo;
    private Arma arma;
    private Feveti feveti;
    private Renit renit;
    private Usuario usuario;
    private String correoConfirmacionId;
    private boolean correoConfirmado;
    private byte[] imagen;

    public byte[] getImagen() {
        return imagen;
    }

    public void setImagen(byte[] imagen) {
        this.imagen = imagen;
    }

    public String getCorreoConfirmacionId() {
        return correoConfirmacionId;
    }

    public void setCorreoConfirmacionId(String correoConfirmacionId) {
        this.correoConfirmacionId = correoConfirmacionId;
    }

    public Boolean getCorreoConfirmado() {
        return correoConfirmado;
    }

    public void setCorreoConfirmado(Boolean correoConfirmado) {
        this.correoConfirmado = correoConfirmado;
    }

    public Persona() {
    }

    public Persona(int personaId) {
        this.personaId = personaId;
    }

    public Persona(int personaId, Integer cedula, String nombre, String rif, Date fechaNacimiento, String lugarNacimiento, String nacionalidad, String direccionHabitacion, String parroquia, String municipio, String estado, String telefonoCantv, String telefonoPersonal, String telefonoFamiliar, String correo, Trabajo trabajo, Arma arma, Feveti feveti, Renit renit, Usuario usuario) {
        this.personaId = personaId;
        this.cedula = cedula;
        this.nombre = nombre;
        this.rif = rif;
        this.fechaNacimiento = fechaNacimiento;
        this.lugarNacimiento = lugarNacimiento;
        this.nacionalidad = nacionalidad;
        this.direccionHabitacion = direccionHabitacion;
        this.parroquia = parroquia;
        this.municipio = municipio;
        this.estado = estado;
        this.telefonoCantv = telefonoCantv;
        this.telefonoPersonal = telefonoPersonal;
        this.telefonoFamiliar = telefonoFamiliar;
        this.correo = correo;
        this.trabajo = trabajo;
        this.arma = arma;
        this.feveti = feveti;
        this.renit = renit;
        this.usuario = usuario;
    }

    public int getPersonaId() {
        return this.personaId;
    }

    public void setPersonaId(int personaId) {
        this.personaId = personaId;
    }

    public Integer getCedula() {
        return this.cedula;
    }

    public void setCedula(Integer cedula) {
        this.cedula = cedula;
    }

    public String getNombre() {
        return this.nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getRif() {
        return this.rif;
    }

    public void setRif(String rif) {
        this.rif = rif;
    }

    public Date getFechaNacimiento() {
        return this.fechaNacimiento;
    }

    public void setFechaNacimiento(Date fechaNacimiento) {
        this.fechaNacimiento = fechaNacimiento;
    }

    public String getLugarNacimiento() {
        return this.lugarNacimiento;
    }

    public void setLugarNacimiento(String lugarNacimiento) {
        this.lugarNacimiento = lugarNacimiento;
    }

    public String getNacionalidad() {
        return this.nacionalidad;
    }

    public void setNacionalidad(String nacionalidad) {
        this.nacionalidad = nacionalidad;
    }

    public String getDireccionHabitacion() {
        return this.direccionHabitacion;
    }

    public void setDireccionHabitacion(String direccionHabitacion) {
        this.direccionHabitacion = direccionHabitacion;
    }

    public String getParroquia() {
        return this.parroquia;
    }

    public void setParroquia(String parroquia) {
        this.parroquia = parroquia;
    }

    public String getMunicipio() {
        return this.municipio;
    }

    public void setMunicipio(String municipio) {
        this.municipio = municipio;
    }

    public String getEstado() {
        return this.estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    public String getTelefonoCantv() {
        return this.telefonoCantv;
    }

    public void setTelefonoCantv(String telefonoCantv) {
        this.telefonoCantv = telefonoCantv;
    }

    public String getTelefonoPersonal() {
        return this.telefonoPersonal;
    }

    public void setTelefonoPersonal(String telefonoPersonal) {
        this.telefonoPersonal = telefonoPersonal;
    }

    public String getTelefonoFamiliar() {
        return this.telefonoFamiliar;
    }

    public void setTelefonoFamiliar(String telefonoFamiliar) {
        this.telefonoFamiliar = telefonoFamiliar;
    }

    public String getCorreo() {
        return this.correo;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }

    public Trabajo getTrabajo() {
        return this.trabajo;
    }

    public void setTrabajo(Trabajo trabajo) {
        this.trabajo = trabajo;
    }

    public Arma getArma() {
        return this.arma;
    }

    public void setArma(Arma arma) {
        this.arma = arma;
    }

    public Feveti getFeveti() {
        return this.feveti;
    }

    public void setFeveti(Feveti feveti) {
        this.feveti = feveti;
    }

    public Renit getRenit() {
        return this.renit;
    }

    public void setRenit(Renit renit) {
        this.renit = renit;
    }

    public Usuario getUsuario() {
        return this.usuario;
    }

    public void setUsuario(Usuario usuario) {
        this.usuario = usuario;
    }

    @Override
    public int hashCode() {
        int hash = 7;
        return hash;
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null) {
            return false;
        }
        if (getClass() != obj.getClass()) {
            return false;
        }
        final Persona other = (Persona) obj;
        if (this.personaId != other.personaId) {
            return false;
        }
        return true;
    }

}
