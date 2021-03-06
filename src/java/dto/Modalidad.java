package dto;
// Generated 21/07/2018 03:28:31 AM by Hibernate Tools 4.3.1

import java.util.HashSet;
import java.util.Set;

/**
 * Modalidad generated by hbm2java
 */
public class Modalidad implements java.io.Serializable {

    private int modalidadId;
    private String descripcion;
    private Set relModalidadRenits = new HashSet(0);

    public static Modalidad P_A = new Modalidad(1, "P.A");
    public static Modalidad T_D = new Modalidad(2, "T.D");
    public static Modalidad A_E = new Modalidad(3, "A.E");
    public static Modalidad E_V = new Modalidad(4, "S.V.P.T.V");
    public static Modalidad O_S_E = new Modalidad(5, "O.S.E");

    public Modalidad() {
    }

    public Modalidad(int modalidadId) {
        this.modalidadId = modalidadId;
    }

    public Modalidad(int modalidadId, String descripcion, Set relModalidadRenits) {
        this.modalidadId = modalidadId;
        this.descripcion = descripcion;
        this.relModalidadRenits = relModalidadRenits;
    }

    public Modalidad(int modalidadId, String descripcion) {
        this.modalidadId = modalidadId;
        this.descripcion = descripcion;
    }

    public int getModalidadId() {
        return this.modalidadId;
    }

    public void setModalidadId(int modalidadId) {
        this.modalidadId = modalidadId;
    }

    public String getDescripcion() {
        return this.descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public Set getRelModalidadRenits() {
        return this.relModalidadRenits;
    }

    public void setRelModalidadRenits(Set relModalidadRenits) {
        this.relModalidadRenits = relModalidadRenits;
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
        final Modalidad other = (Modalidad) obj;
        if (this.modalidadId != other.modalidadId) {
            return false;
        }
        return true;
    }

}
