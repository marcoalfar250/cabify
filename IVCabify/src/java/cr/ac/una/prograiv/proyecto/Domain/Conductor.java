package cr.ac.una.prograiv.proyecto.Domain;
// Generated 07/11/2017 02:19:17 PM by Hibernate Tools 4.3.1


import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * Conductor generated by hbm2java
 */
public class Conductor  implements java.io.Serializable {


     private int id;
     private String nombre;
     private String apellidos;
     private String password;
     private String tipoL;
     private Date fechaN;
     private Date fechaVl;
     private String vehiculoActual;
     private String tipoConductor;
     private Integer clienteActual;
     private Date ultimaMod;
     private Integer ultModUs;
    

    public Conductor() {
    }

	
    public Conductor(int id, String nombre, String apellidos, String password, String tipoL, Date fechaN, Date fechaVl, String vehiculoActual, String tipoConductor) {
        this.id = id;
        this.nombre = nombre;
        this.apellidos = apellidos;
        this.password = password;
        this.tipoL = tipoL;
        this.fechaN = fechaN;
        this.fechaVl = fechaVl;
        this.vehiculoActual = vehiculoActual;
        this.tipoConductor = tipoConductor;
    }

    public Conductor(int id, String nombre, String apellidos, String password, String tipoL, Date fechaN, Date fechaVl, String vehiculoActual, String tipoConductor, Integer clienteActual, Date ultimaMod, Integer ultModUs) {
        this.id = id;
        this.nombre = nombre;
        this.apellidos = apellidos;
        this.password = password;
        this.tipoL = tipoL;
        this.fechaN = fechaN;
        this.fechaVl = fechaVl;
        this.vehiculoActual = vehiculoActual;
        this.tipoConductor = tipoConductor;
        this.clienteActual = clienteActual;
        this.ultimaMod = ultimaMod;
        this.ultModUs = ultModUs;
    }
    
   
    public int getId() {
        return this.id;
    }
    
    public void setId(int id) {
        this.id = id;
    }
    public String getNombre() {
        return this.nombre;
    }
    
    public void setNombre(String nombre) {
        this.nombre = nombre;
    }
    public String getApellidos() {
        return this.apellidos;
    }
    
    public void setApellidos(String apellidos) {
        this.apellidos = apellidos;
    }
    public String getPassword() {
        return this.password;
    }
    
    public void setPassword(String password) {
        this.password = password;
    }
    public String getTipoL() {
        return this.tipoL;
    }
    
    public void setTipoL(String tipoL) {
        this.tipoL = tipoL;
    }
    public Date getFechaN() {
        return this.fechaN;
    }
    
    public void setFechaN(Date fechaN) {
        this.fechaN = fechaN;
    }
    public Date getFechaVl() {
        return this.fechaVl;
    }
    
    public void setFechaVl(Date fechaVl) {
        this.fechaVl = fechaVl;
    }
    public String getVehiculoActual() {
        return this.vehiculoActual;
    }
    
    public void setVehiculoActual(String vehiculoActual) {
        this.vehiculoActual = vehiculoActual;
    }
    public String getTipoConductor() {
        return this.tipoConductor;
    }
    
    public void setTipoConductor(String tipoConductor) {
        this.tipoConductor = tipoConductor;
    }
    public Integer getClienteActual() {
        return this.clienteActual;
    }
    
    public void setClienteActual(Integer clienteActual) {
        this.clienteActual = clienteActual;
    }
    public Date getUltimaMod() {
        return this.ultimaMod;
    }
    
    public void setUltimaMod(Date ultimaMod) {
        this.ultimaMod = ultimaMod;
    }
    public Integer getUltModUs() {
        return this.ultModUs;
    }
    
    public void setUltModUs(Integer ultModUs) {
        this.ultModUs = ultModUs;
    }
    




}


