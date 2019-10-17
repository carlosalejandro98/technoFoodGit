package dto;

public class DetallePedido {

    private int id_detalle_venta;
    private int cantidad;
    private int producto;
    private int id_mesa;
    private int id_estado;
    private String nombre_producto;
    private String tipo_producto;
    private String estado_pedido;

    public DetallePedido(int cantidad, int producto, int id_mesa, int id_estado) {
        this.cantidad = cantidad;
        this.producto = producto;
        this.id_mesa = id_mesa;
        this.id_estado = id_estado;
    }

    public DetallePedido(int id_detalle_venta, int cantidad, int id_mesa, String nombre_producto, String tipo_producto, String estado_pedido) {
        this.id_detalle_venta = id_detalle_venta;
        this.cantidad = cantidad;
        this.id_mesa = id_mesa;
        this.nombre_producto = nombre_producto;
        this.tipo_producto = tipo_producto;
        this.estado_pedido = estado_pedido;
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

    public int getId_estado() {
        return id_estado;
    }

    public void setId_estado(int id_estado) {
        this.id_estado = id_estado;
    }

    public String getNombre_producto() {
        return nombre_producto;
    }

    public void setNombre_producto(String nombre_producto) {
        this.nombre_producto = nombre_producto;
    }

    public String getTipo_producto() {
        return tipo_producto;
    }

    public void setTipo_producto(String tipo_producto) {
        this.tipo_producto = tipo_producto;
    }

    public String getEstado_pedido() {
        return estado_pedido;
    }

    public void setEstado_pedido(String estado_pedido) {
        this.estado_pedido = estado_pedido;
    }
    
    

}
