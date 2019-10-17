package dao;

import Interface.Metodos;
import dto.Menu;
import dto.Mesa;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Callable;
import modelo.Conexion;
import oracle.jdbc.OracleTypes;
import oracle.jdbc.oracore.OracleType;

public class MesaDAO {

    private static final String SQL_READALL = "{call Sp_Listar_Mesa(?)}";
    private static final String SQL_UPDATE = "{call Sp_Modificar_Mesa2(?)}";
    private static final String SQL_UPDATE_OCUPADO = "{call Sp_Modificar_Mesa_Ocupada(?)}";

    private static final Conexion conexion = Conexion.estado();


    public List<Mesa> readAll() {
        PreparedStatement pre;
        CallableStatement cstmt;
        Connection cn = conexion.getConnection();
        List<Mesa> lista = new ArrayList<Mesa>();
        try {
            pre = conexion.getConnection().prepareStatement(SQL_READALL);
            String llamadaProcedimiento = "{call Sp_Listar_Mesa(?)}";
            CallableStatement cs = cn.prepareCall(llamadaProcedimiento);
            cs.registerOutParameter(1, OracleTypes.CURSOR);

            cs.execute();

            ResultSet rs = (ResultSet) cs.getObject(1);

            while (rs.next()) {
                Mesa mesa = new Mesa();
                mesa.setId_mesa(rs.getInt("id_mesa"));
                mesa.setAsientos(rs.getInt("asientos"));
                mesa.setEstado_mesa(rs.getString("estado"));

                lista.add(mesa);
            }
        } catch (Exception e) {
            System.out.println(e.getMessage());
        } finally {
            conexion.cerrarConexion();
            return lista;
        }
    }
    
    public boolean update(Mesa generico){
        PreparedStatement pre;
        try {
            pre = conexion.getConnection().prepareCall(SQL_UPDATE);
            pre.setInt(1, generico.getId_mesa());
            
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
    
    
     public boolean updateOcupado(Mesa generico){
        PreparedStatement pre;
        try {
            pre = conexion.getConnection().prepareCall(SQL_UPDATE_OCUPADO);
            pre.setInt(1, generico.getId_mesa());
            
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
    
  
}
