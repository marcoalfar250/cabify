package cr.ac.una.prograiv.proyecto.Domain;
// Generated 07/11/2017 02:19:17 PM by Hibernate Tools 4.3.1


import java.util.Date;

/**
 * Ruta generated by hbm2java
 */
public class Ruta  implements java.io.Serializable {


     private int id;
     private Viaje viaje;
     private String puntoI;
     private String puntoF;
     private int distancia;
     private double precio;
     private Integer usuarioactual;
     private Integer vehiculoactual;
     private Integer choferactual;
     private Date ultimaMod;

    public Ruta() {
    }

	
    public Ruta(int id, Viaje viaje, String puntoI, String puntoF, int distancia, double precio) {
        this.id = id;
        this.viaje = viaje;
        this.puntoI = puntoI;
        this.puntoF = puntoF;
        this.distancia = distancia;
        this.precio = precio;
    }

    public Ruta(int id, Viaje viaje, String puntoI, String puntoF, int distancia, double precio, Integer usuarioactual, Integer vehiculoactual, Integer choferactual, Date ultimaMod) {
        this.id = id;
        this.viaje = viaje;
        this.puntoI = puntoI;
        this.puntoF = puntoF;
        this.distancia = distancia;
        this.precio = precio;
        this.usuarioactual = usuarioactual;
        this.vehiculoactual = vehiculoactual;
        this.choferactual = choferactual;
        this.ultimaMod = ultimaMod;
    }
    
   
    public int getId() {
        return this.id;
    }
    
    public void setId(int id) {
        this.id = id;
    }
    public Viaje getViaje() {
        return this.viaje;
    }
    
    public void setViaje(Viaje viaje) {
        this.viaje = viaje;
    }
    public String getPuntoI() {
        return this.puntoI;
    }
    
    public void setPuntoI(String puntoI) {
        this.puntoI = puntoI;
    }
    public String getPuntoF() {
        return this.puntoF;
    }
    
    public void setPuntoF(String puntoF) {
        this.puntoF = puntoF;
    }
    public int getDistancia() {
        return this.distancia;
    }
    
    public void setDistancia(int distancia) {
        this.distancia = distancia;
    }
    public double getPrecio() {
        return this.precio;
    }
    
    public void setPrecio(double precio) {
        this.precio = precio;
    }
    public Integer getUsuarioactual() {
        return this.usuarioactual;
    }
    
    public void setUsuarioactual(Integer usuarioactual) {
        this.usuarioactual = usuarioactual;
    }
    public Integer getVehiculoactual() {
        return this.vehiculoactual;
    }
    
    public void setVehiculoactual(Integer vehiculoactual) {
        this.vehiculoactual = vehiculoactual;
    }
    public Integer getChoferactual() {
        return this.choferactual;
    }
    
    public void setChoferactual(Integer choferactual) {
        this.choferactual = choferactual;
    }
    public Date getUltimaMod() {
        return this.ultimaMod;
    }
    
    public void setUltimaMod(Date ultimaMod) {
        this.ultimaMod = ultimaMod;
    }




}


