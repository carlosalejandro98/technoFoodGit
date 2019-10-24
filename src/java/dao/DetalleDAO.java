package dao;

import Interface.Metodos;
import controlador.servletPago;
import dto.Carrito;
import dto.DetallePedido;
import dto.Pedido;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import modelo.Conexion;
import oracle.jdbc.OracleTypes;

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

    public boolean crearPedido(Pedido pedido) {
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
        PreparedStatement pre;
        CallableStatement cstmt;
        Connection cn = conexion.getConnection();
        List<DetallePedido> lista = new ArrayList<>();
        try {
            pre = conexion.getConnection().prepareStatement(SQL_INSERT);
            String llamarProcedimiento = "{call }";
            CallableStatement cs = cn.prepareCall(llamarProcedimiento);
            cs.registerOutParameter(1, OracleTypes.CURSOR);

            cs.execute();

            ResultSet rs = (ResultSet) cs.getObject(1);

            while (rs.next()) {
                DetallePedido detalle = new DetallePedido();
                detalle.setId_detalle_venta(rs.getInt("id_det_pedido"));

                lista.add(detalle);

            }
        } catch (Exception e) {
            System.out.println(e.getMessage());
        } finally {
            conexion.cerrarConexion();
            return lista;
        }
    }

}
