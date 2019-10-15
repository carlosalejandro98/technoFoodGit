
package dto;

import java.sql.Date;

public class Menu {
    private int id_menu;
    private String menu;
    private String Descripcion;
    private int precio;
    private Date fecha;
    private String foto;
    private int id_calendario;

    public Menu() {
    }

    public Menu(int id_menu) {
        this.id_menu = id_menu;
    }

    
    public Menu(int id_menu, String menu, String Descripcion, int precio, Date fecha, String foto, int id_calendario) {
        this.id_menu = id_menu;
        this.menu = menu;
        this.Descripcion = Descripcion;
        this.precio = precio;
        this.fecha = fecha;
        this.foto = foto;
        this.id_calendario = id_calendario;
    }

    public Menu(int id_menu, String menu, String Descripcion, int precio, Date fecha, String foto) {
        this.id_menu = id_menu;
        this.menu = menu;
        this.Descripcion = Descripcion;
        this.precio = precio;
        this.fecha = fecha;
        this.foto = foto;
    }
    
    

    public int getId_menu() {
        return id_menu;
    }

    public void setId_menu(int id_menu) {
        this.id_menu = id_menu;
    }

    public String getMenu() {
        return menu;
    }

    public void setMenu(String menu) {
        this.menu = menu;
    }

    public String getDescripcion() {
        return Descripcion;
    }

    public void setDescripcion(String Descripcion) {
        this.Descripcion = Descripcion;
    }

    public int getPrecio() {
        return precio;
    }

    public void setPrecio(int precio) {
        this.precio = precio;
    }

    public Date getFecha() {
        return fecha;
    }

    public void setFecha(Date fecha) {
        this.fecha = fecha;
    }

    public String getFoto() {
        return foto;
    }

    public void setFoto(String foto) {
        this.foto = foto;
    }

    public int getId_calendario() {
        return id_calendario;
    }

    public void setId_calendario(int id_calendario) {
        this.id_calendario = id_calendario;
    }

    

    
}
