package dao;

import Interface.Metodos;
import controlador.servletPago;
import dto.Carrito;
import dto.DetallePedido;
import dto.Pedido;
import java.sql.PreparedStatement;
import java.util.ArrayList;
import java.util.List;
import modelo.Conexion;

public class DetalleDAO implements Metodos<DetallePedido> {

  
    private static final String SQL_INSERT = "{call Sp_Agregar_Detalle_Pedido(?,?,?,?,?)}";
    private static final String SQL_INSERT_PEDIDO = "{call Sp_Agregar_Pedido(?,?,?)}";

    private static final Conexion conexion = Conexion.estado();

    @Override
    public boolean create(DetallePedido generico) {
        PreparedStatement pre;

        try {
            pre = conexion.getConnection().prepareCall(SQL_INSERT);

          
                pre.setInt(1, generico.getCantidad());
                pre.setInt(2, generico.getProducto());
                pre.setInt(3, generico.getId_mesa());
                pre.setInt(4, generico.getId_estado());
                pre.setInt(5, generico.getId_pedido());

                if (pre.executeUpdate() > 0) {
                    return true;
                }
           

        } catch (Exception e) {
            System.out.println(e.getMessage());
        } finally {
            conexion.cerrarConexion();
        }

        return false;
    }
    
    public boolean crearPedido(Pedido pedido){
        PreparedStatement pre;
        
        try {
            pre = conexion.getConnection().prepareCall(SQL_INSERT_PEDIDO);
            
            pre.setDate(1, pedido.getFecha());
            pre.setInt(2, pedido.getId_usuario());
            pre.setInt(3, pedido.getTotal());
            
            if (pre.executeUpdate() > 0) {
                return true;
            }
            
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }finally{
            conexion.cerrarConexion();
        }
        return false;
    }

    @Override
    public boolean update(DetallePedido generico) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean delete(DetallePedido generico) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public DetallePedido read(Object pk) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public List<DetallePedido> readAll() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

}
