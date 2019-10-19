package dao;

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

public class PedidoDAO {

    private static final String SQL_READALL = "{call Sp_Listar_Detalle_Pedido(?)}";
    private static final String SQL_INSERT = "{call Sp_Listar_Pedido(?,?,?,?)}";

    private static final Conexion conexion = Conexion.estado();

    public List<DetallePedido> readAll() {
        PreparedStatement pre;
        CallableStatement cstmt;
        Connection cn = conexion.getConnection();
        List<DetallePedido> lista = new ArrayList<>();
        try {
            pre = conexion.getConnection().prepareStatement(SQL_READALL);
            String llamarProcedimiento = "{call Sp_Listar_Detalle_Pedido(?)}";
            CallableStatement cs = cn.prepareCall(llamarProcedimiento);
            cs.registerOutParameter(1, OracleTypes.CURSOR);

            cs.executeQuery();

            ResultSet rs = (ResultSet) cs.getObject(1);

            while (rs.next()) {
                DetallePedido detalle = new DetallePedido();
                detalle.setId_detalle_venta(rs.getInt("id_det_pedido"));
                detalle.setNombre_producto(rs.getString("nombre"));
                detalle.setCantidad(rs.getInt("cantidad"));
                detalle.setTipo_producto(rs.getString("tipo_producto"));
                detalle.setId_mesa(rs.getInt("id_mesa"));
                detalle.setEstado_pedido(rs.getString("estado_pedido"));
                
                
                lista.add(detalle);
            }
        } catch (Exception e) {
            System.out.println(e.getMessage());
        } finally {
            conexion.cerrarConexion();
            return lista;
        }
    }

    public boolean create(Pedido pedido) {
        PreparedStatement pre;
        try {
            pre = conexion.getConnection().prepareCall(SQL_INSERT);
            pre.setDate(1, pedido.getFecha());
            pre.setInt(2, pedido.getCantidad());
            pre.setInt(3, pedido.getTotal());
            pre.setInt(4, pedido.getId_pedido());

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
    
    
    
    
   
}
