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
public class Producto {
    private int id_producto;
    private String nombre;
    private String descripcion;
    private int precio;
    private String foto;
    private int tipo_producto;
    private int id_insumo;
    private int id_receta;

    public Producto() {
    }

    public Producto(int id_producto, String nombre, String descripcion, int precio, String foto, int tipo_producto, int id_insumo, int id_receta) {
        this.id_producto = id_producto;
        this.nombre = nombre;
        this.descripcion = descripcion;
        this.precio = precio;
        this.foto = foto;
        this.tipo_producto = tipo_producto;
        this.id_insumo = id_insumo;
        this.id_receta = id_receta;
    }

    public Producto(int id_producto, String nombre, String descripcion, int precio, String foto) {
        this.id_producto = id_producto;
        this.nombre = nombre;
        this.descripcion = descripcion;
        this.precio = precio;
        this.foto = foto;
    }

    public int getId_producto() {
        return id_producto;
    }

    public void setId_producto(int id_producto) {
        this.id_producto = id_producto;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public int getPrecio() {
        return precio;
    }

    public void setPrecio(int precio) {
        this.precio = precio;
    }

    public String getFoto() {
        return foto;
    }

    public void setFoto(String foto) {
        this.foto = foto;
    }

    public int getTipo_producto() {
        return tipo_producto;
    }

    public void setTipo_producto(int tipo_producto) {
        this.tipo_producto = tipo_producto;
    }

    public int getId_insumo() {
        return id_insumo;
    }

    public void setId_insumo(int id_insumo) {
        this.id_insumo = id_insumo;
    }

    public int getId_receta() {
        return id_receta;
    }

    public void setId_receta(int id_receta) {
        this.id_receta = id_receta;
    }
    
    
    
}
