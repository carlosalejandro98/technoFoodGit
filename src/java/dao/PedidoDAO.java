package dao;

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

    private static final String SQL_READALL = "{call Sp_Listar_Pedido(?)}";

    private static final Conexion conexion = Conexion.estado();

    public List<Pedido> readAll() {
        PreparedStatement pre;
        CallableStatement cstmt;
        Connection cn = conexion.getConnection();
        List<Pedido> lista = new ArrayList<>();
        try {
            pre = conexion.getConnection().prepareStatement(SQL_READALL);
            String llamarProcedimiento = "{call Sp_Listar_Pedido(?)}";
            CallableStatement cs = cn.prepareCall(llamarProcedimiento);
            cs.registerOutParameter(1, OracleTypes.CURSOR);

            cs.executeQuery();

            ResultSet rs = (ResultSet) cs.getObject(1);

            while (rs.next()) {
                Pedido pedido = new Pedido();
                pedido.setId_pedido(rs.getInt("id_pedido"));
                pedido.setCantidad(rs.getInt("cantidad"));
                pedido.setProducto(rs.getString("nombre"));
                pedido.setTipo(rs.getString("tipo_producto"));
                pedido.setId_mesa(rs.getInt("id_mesa"));
                pedido.setEstado(rs.getString("estado_pedido"));
                

                lista.add(pedido);
            }
        } catch (Exception e) {
            System.out.println(e.getMessage());
        } finally {
            conexion.cerrarConexion();
            return lista;
        }
    }
}
