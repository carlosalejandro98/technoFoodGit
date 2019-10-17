package dto;

import java.io.InputStream;
import java.sql.Date;

public class Receta {

    private int id_receta;
    private String foto;
    private String nombre_receta;
    private String autor;
    private Date fecha;
    private String ingredientes;
    private String descripcion;
    private InputStream fotoS;

    public Receta() {
    }

    public Receta(int id_receta, String foto, String nombre_receta, String autor, Date fecha, String ingredientes, String descripcion) {
        this.id_receta = id_receta;
        this.foto = foto;
        this.nombre_receta = nombre_receta;
        this.autor = autor;
        this.fecha = fecha;
        this.ingredientes = ingredientes;
        this.descripcion = descripcion;
    }

    public Receta(String foto, String nombre_receta, String autor, Date fecha, String ingredientes, String descripcion) {
        this.foto = foto;
        this.nombre_receta = nombre_receta;
        this.autor = autor;
        this.fecha = fecha;
        this.ingredientes = ingredientes;
        this.descripcion = descripcion;
    }

    public Receta(String nombre_receta, String autor, Date fecha, String ingredientes, String descripcion, InputStream fotoS) {
        this.nombre_receta = nombre_receta;
        this.autor = autor;
        this.fecha = fecha;
        this.ingredientes = ingredientes;
        this.descripcion = descripcion;
        this.fotoS = fotoS;
    }

    public int getId_receta() {
        return id_receta;
    }

    public void setId_receta(int id_receta) {
        this.id_receta = id_receta;
    }

    public String getFoto() {
        return foto;
    }

    public void setFoto(String foto) {
        this.foto = foto;
    }

    public String getNombre_receta() {
        return nombre_receta;
    }

    public void setNombre_receta(String nombre_receta) {
        this.nombre_receta = nombre_receta;
    }

    public String getAutor() {
        return autor;
    }

    public void setAutor(String autor) {
        this.autor = autor;
    }

    public Date getFecha() {
        return fecha;
    }

    public void setFecha(Date fecha) {
        this.fecha = fecha;
    }

    public String getIngredientes() {
        return ingredientes;
    }

    public void setIngredientes(String ingredientes) {
        this.ingredientes = ingredientes;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public InputStream getFotoS() {
        return fotoS;
    }

    public void setFotoS(InputStream fotoS) {
        this.fotoS = fotoS;
    }

}
