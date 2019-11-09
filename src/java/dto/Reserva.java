/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dto;

import java.sql.Date;

/**
 *
 * @author Carlitos
 */
public class Reserva {
    private int id_reserva;
    private String rut;
    private String nombre;
    private String apellido;
    private int telefono;
    private String correo;
    private int asiento;
    private Date fecha;
    private int id_mesa;

    public Reserva() {
    }

    public Reserva(int id_reserva, String rut, String nombre, String apellido, int telefono, String correo, int asiento, Date fecha, int id_mesa) {
        this.id_reserva = id_reserva;
        this.rut = rut;
        this.nombre = nombre;
        this.apellido = apellido;
        this.telefono = telefono;
        this.correo = correo;
        this.asiento = asiento;
        this.fecha = fecha;
        this.id_mesa = id_mesa;
    }

    public Reserva(int id_reserva, String rut, String nombre, String apellido, int asiento, Date fecha) {
        this.id_reserva = id_reserva;
        this.rut = rut;
        this.nombre = nombre;
        this.apellido = apellido;
        this.asiento = asiento;
        this.fecha = fecha;
    }
    
    

    public Reserva(String rut, String nombre, String apellido, int telefono, String correo, int asiento, Date fecha, int id_mesa) {
        this.rut = rut;
        this.nombre = nombre;
        this.apellido = apellido;
        this.telefono = telefono;
        this.correo = correo;
        this.asiento = asiento;
        this.fecha = fecha;
        this.id_mesa = id_mesa;
    }

   
    public Reserva(String rut) {
        this.rut = rut;
    }
    
    
    

    public int getId_reserva() {
        return id_reserva;
    }

    public void setId_reserva(int id_reserva) {
        this.id_reserva = id_reserva;
    }

    public String getRut() {
        return rut;
    }

    public void setRut(String rut) {
        this.rut = rut;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellido() {
        return apellido;
    }

    public void setApellido(String apellido) {
        this.apellido = apellido;
    }

    public int getTelefono() {
        return telefono;
    }

    public void setTelefono(int telefono) {
        this.telefono = telefono;
    }

    public String getCorreo() {
        return correo;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }

    public int getAsiento() {
        return asiento;
    }

    public void setAsiento(int asiento) {
        this.asiento = asiento;
    }

    public Date getFecha() {
        return fecha;
    }

    public void setFecha(Date fecha) {
        this.fecha = fecha;
    }

    public int getId_mesa() {
        return id_mesa;
    }

    public void setId_mesa(int id_mesa) {
        this.id_mesa = id_mesa;
    }

   
    
}
