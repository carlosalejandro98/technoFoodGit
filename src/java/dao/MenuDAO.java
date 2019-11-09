package dao;

import dto.Menu;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import modelo.Conexion;
import oracle.jdbc.OracleCallableStatement;
import oracle.jdbc.OracleTypes;

public class MenuDAO extends Conexion {

    private static final String SQL_READALL = "{call Sp_Listar_Menu(?)}";

    private static final Conexion conexion = Conexion.estado();

    public List<Menu> readAll() {
        PreparedStatement pre;
        CallableStatement cstmt;
        Connection cn = conexion.getConnection();
        List<Menu> lista = new ArrayList<>();
        try {
            pre = conexion.getConnection().prepareStatement(SQL_READALL);
            String llamarProcedimiento = "{call Sp_Listar_Menu(?)}";
            CallableStatement cs = cn.prepareCall(llamarProcedimiento);
            cs.registerOutParameter(1, OracleTypes.CURSOR);

            cs.execute();

            ResultSet rs = (ResultSet) cs.getObject(1);

            while (rs.next()) {
                Menu menu = new Menu();
                menu.setId_menu(rs.getInt("id_menu"));
                menu.setMenu(rs.getString("menu"));
                menu.setDescripcion(rs.getString("descripcion"));
                menu.setPrecio(rs.getInt("precio"));
                menu.setFecha(rs.getDate("fecha"));
                menu.setFoto(rs.getString("foto"));

                lista.add(menu);
            }
        } catch (Exception e) {
            System.out.println(e.getMessage());
        } finally {
            conexion.cerrarConexion();
            return lista;
        }
    }

    public Menu getMenu(int id) {
        Menu menu = null;
        
        try {
            
           Connection cn = conexion.getConnection();
          
            CallableStatement cstmt  = cn.prepareCall("{ ? = call Fn_Listar_Menu3(?)}");
            
            cstmt.setInt(2, id);
            
            cstmt.registerOutParameter(1, OracleTypes.CURSOR);
            
            cstmt.execute();
           
            ResultSet rs = ((OracleCallableStatement)cstmt).getCursor(1);
            while (rs.next()) {
                menu = new Menu(rs.getInt("id_menu"), rs.getString("menu"), rs.getString("descripcion"), rs.getInt("precio"), rs.getDate("fecha"), rs.getString("foto"));
            }

        } catch (Exception e) {
            System.out.println("" + e.getMessage());
        }
        return menu;

    }
    
}
