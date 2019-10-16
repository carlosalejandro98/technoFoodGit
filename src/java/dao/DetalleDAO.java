package dao;

import Interface.Metodos;
import dto.DetallePedido;
import java.sql.PreparedStatement;
import java.util.List;
import modelo.Conexion;

public class DetalleDAO implements Metodos<DetallePedido> {

    private static final String SQL_INSERT = "{call Sp_Agregar_Detalle_Pedido(?,?)}";

    private static final Conexion conexion = Conexion.estado();

    @Override
    public boolean create(DetallePedido generico) {
        PreparedStatement pre;
        try {
            pre = conexion.getConnection().prepareCall(SQL_INSERT);
            pre.setInt(1, generico.getCantidad());
            pre.setInt(2, generico.getProducto());

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
