package dto;

public class DetallePedido {

    private int id_detalle_venta;
    private int cantidad;
    private int producto;
    private int id_mesa;

    public DetallePedido(int cantidad, int producto, int id_mesa) {
        this.cantidad = cantidad;
        this.producto = producto;
        this.id_mesa = id_mesa;
    }

    public DetallePedido() {
    }

    public int getId_detalle_venta() {
        return id_detalle_venta;
    }

    public void setId_detalle_venta(int id_detalle_venta) {
        this.id_detalle_venta = id_detalle_venta;
    }

    public int getCantidad() {
        return cantidad;
    }

    public void setCantidad(int cantidad) {
        this.cantidad = cantidad;
    }

    public int getProducto() {
        return producto;
    }

    public void setProducto(int producto) {
        this.producto = producto;
    }

    public int getId_mesa() {
        return id_mesa;
    }

    public void setId_mesa(int id_mesa) {
        this.id_mesa = id_mesa;
    }

}
