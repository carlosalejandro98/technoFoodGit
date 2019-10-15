package dto;

public class DetallePedido {

    private int id_detalle_venta;
    private int cantidad;
    private Producto producto;
    private Pedido pedido;

    public DetallePedido(int id_detalle_venta, int cantidad, Producto producto, Pedido pedido) {
        this.id_detalle_venta = id_detalle_venta;
        this.cantidad = cantidad;
        this.producto = producto;
        this.pedido = pedido;
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

    public Producto getProducto() {
        return producto;
    }

    public void setProducto(Producto producto) {
        this.producto = producto;
    }

    public Pedido getPedido() {
        return pedido;
    }

    public void setPedido(Pedido pedido) {
        this.pedido = pedido;
    }

}
