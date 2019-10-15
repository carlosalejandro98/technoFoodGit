/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dto;

/**
 *
 * @author Carlitos
 */
public class Usuario {
    private int id;
    private String usuario;
    private String contrasena;
    private String rut;
    private String nombre;
    private String apellido;
    private int telefono;
    private String correo;
    private int tipo_usuario;
    private int sexo;

    public Usuario() {
    }

    public Usuario(String usuario, String contrasena, int tipo_usuario) {
        this.usuario = usuario;
        this.contrasena = contrasena;
        this.tipo_usuario = tipo_usuario;
    }

    
    
    public Usuario(int id, String usuario, String contrasena, String rut, String nombre, String apellido, int telefono, String correo, int tipo_usuario, int sexo) {
        this.id = id;
        this.usuario = usuario;
        this.contrasena = contrasena;
        this.rut = rut;
        this.nombre = nombre;
        this.apellido = apellido;
        this.telefono = telefono;
        this.correo = correo;
        this.tipo_usuario = tipo_usuario;
        this.sexo = sexo;
    }

    public Usuario(String usuario, String contrasena) {
        this.usuario = usuario;
        this.contrasena = contrasena;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUsuario() {
        return usuario;
    }

    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }

    public String getContrasena() {
        return contrasena;
    }

    public void setContrasena(String contrasena) {
        this.contrasena = contrasena;
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

    public int getTipo_usuario() {
        return tipo_usuario;
    }

    public void setTipo_usuario(int tipo_usuario) {
        this.tipo_usuario = tipo_usuario;
    }

    public int getSexo() {
        return sexo;
    }

    public void setSexo(int sexo) {
        this.sexo = sexo;
    }

    
    
}
