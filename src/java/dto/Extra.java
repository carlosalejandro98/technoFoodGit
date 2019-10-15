
package dto;


public class Extra {
    private int id_extra;
    private String nombre;
    private String descripcion;
    private int precio;
    private String foto;

    public Extra() {
    }

    public Extra(int id_extra, String nombre, String descripcion, int precio, String foto) {
        this.id_extra = id_extra;
        this.nombre = nombre;
        this.descripcion = descripcion;
        this.precio = precio;
        this.foto = foto;
    }

    public Extra(String nombre, String descripcion, int precio, String foto) {
        this.nombre = nombre;
        this.descripcion = descripcion;
        this.precio = precio;
        this.foto = foto;
    }

    
    public int getId_extra() {
        return id_extra;
    }

    public void setId_extra(int id_extra) {
        this.id_extra = id_extra;
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

    
}
