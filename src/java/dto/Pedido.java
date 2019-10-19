package dto;

import java.sql.Date;

public class Pedido {

    private int id_pedido;
    private Date fecha;
    private int cantidad;
    private int total;
    private int id_usuario;
    private int id_mesa;
    private int id_estado;
    private int id_producto;
    private String producto;
    private String tipo;
    private String estado;

    public Pedido() {
    }

    public Pedido(Date fecha, int cantidad, int total, int id_estado, int id_producto) {
        this.fecha = fecha;
        this.cantidad = cantidad;
        this.total = total;
        this.id_estado = id_estado;
        this.id_producto = id_producto;
    }

    public Pedido(Date fecha, int total, int id_usuario) {
        this.fecha = fecha;
        this.total = total;
        this.id_usuario = id_usuario;
    }
    
    
    

    public Pedido(int id_pedido, Date fecha, int cantidad, String producto) {
        this.id_pedido = id_pedido;
        this.fecha = fecha;
        this.cantidad = cantidad;
        this.producto = producto;
    }

    public Pedido(int id_pedido, int cantidad, String producto,  String tipo, int id_mesa, String estado) {
        this.id_pedido = id_pedido;
        this.cantidad = cantidad;
        this.producto = producto;
        this.tipo = tipo;
        this.id_mesa = id_mesa;
        this.estado = estado;
        
    }

    public int getId_pedido() {
        return id_pedido;
    }

    public void setId_pedido(int id_pedido) {
        this.id_pedido = id_pedido;
    }

    public Date getFecha() {
        return fecha;
    }

    public void setFecha(Date fecha) {
        this.fecha = fecha;
    }

    public int getCantidad() {
        return cantidad;
    }

    public void setCantidad(int cantidad) {
        this.cantidad = cantidad;
    }

    public int getTotal() {
        return total;
    }

    public void setTotal(int total) {
        this.total = total;
    }

    public int getId_usuario() {
        return id_usuario;
    }

    public void setId_usuario(int id_usuario) {
        this.id_usuario = id_usuario;
    }

    public int getId_mesa() {
        return id_mesa;
    }

    public void setId_mesa(int id_mesa) {
        this.id_mesa = id_mesa;
    }

    public int getId_estado() {
        return id_estado;
    }

    public void setId_estado(int id_estado) {
        this.id_estado = id_estado;
    }

    public int getId_producto() {
        return id_producto;
    }

    public void setId_producto(int id_producto) {
        this.id_producto = id_producto;
    }

    public String getProducto() {
        return producto;
    }

    public void setProducto(String producto) {
        this.producto = producto;
    }

    public String getTipo() {
        return tipo;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    
    
}
