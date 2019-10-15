package dto;

import java.io.InputStream;


public class Plato {
    private int id_plato;
    private String nombre_plato;
    private String descripcion;
    private String foto;
    private int precio;
    private int id_receta;
    private int id_insumo;

    public Plato() {
    }

    public Plato(int id_plato, String nombre_plato, String descripcion, String foto, int precio, int id_receta, int id_insumo) {
        this.id_plato = id_plato;
        this.nombre_plato = nombre_plato;
        this.descripcion = descripcion;
        this.foto = foto;
        this.precio = precio;
        this.id_receta = id_receta;
        this.id_insumo = id_insumo;
    }

    public Plato(int id_plato, String nombre_plato, String descripcion, String foto, int precio) {
        this.id_plato = id_plato;
        this.nombre_plato = nombre_plato;
        this.descripcion = descripcion;
        this.foto = foto;
        this.precio = precio;
    }

    public int getId_plato() {
        return id_plato;
    }

    public void setId_plato(int id_plato) {
        this.id_plato = id_plato;
    }

    public String getNombre_plato() {
        return nombre_plato;
    }

    public void setNombre_plato(String nombre_plato) {
        this.nombre_plato = nombre_plato;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public String getFoto() {
        return foto;
    }

    public void setFoto(String foto) {
        this.foto = foto;
    }

    public int getPrecio() {
        return precio;
    }

    public void setPrecio(int precio) {
        this.precio = precio;
    }

    public int getId_receta() {
        return id_receta;
    }

    public void setId_receta(int id_receta) {
        this.id_receta = id_receta;
    }

    public int getId_insumo() {
        return id_insumo;
    }

    public void setId_insumo(int id_insumo) {
        this.id_insumo = id_insumo;
    }

}
