package dto;

public class DetallePedido {

    private int id_detalle_venta;
    private int cantidad;
    private int producto;

    public DetallePedido(int id_detalle_venta, int cantidad, int producto) {
        this.id_detalle_venta = id_detalle_venta;
        this.cantidad = cantidad;
        this.producto = producto;
    }

    public DetallePedido(int cantidad, int producto) {
        this.cantidad = cantidad;
        this.producto = producto;
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

}
