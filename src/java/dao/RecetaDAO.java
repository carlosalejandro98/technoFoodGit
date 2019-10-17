package dao;

import Interface.Metodos;
import dto.Receta;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import modelo.Conexion;
import oracle.jdbc.OracleTypes;
import oracle.jdbc.oracore.OracleType;

public class RecetaDAO implements Metodos<Receta> {

    private static final String SQL_INSERT = "{call Sp_Agregar_Receta(?,?,?,?,?,?)}";
    private static final String SQL_READALL = "{call Sp_Listar_Receta(?)}";

    private static final Conexion conexion = Conexion.estado();

    @Override
    public boolean create(Receta generico) {
        PreparedStatement pre;
        try {
            pre = conexion.getConnection().prepareCall(SQL_INSERT);
            pre.setString(1, generico.getFoto());
            pre.setString(2, generico.getNombre_receta());
            pre.setString(3, generico.getAutor());
            pre.setDate(4, generico.getFecha());
            pre.setString(5, generico.getIngredientes());
            pre.setString(6, generico.getDescripcion());

            if (pre.executeUpdate() > 0) {
                return true;
            }
        } catch (Exception e) {
            System.out.println(e);
        } finally {
            conexion.cerrarConexion();
        }
        return false;
    }

    @Override
    public boolean update(Receta generico) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean delete(Receta generico) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public Receta read(Object pk) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public List<Receta> readAll() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
//        PreparedStatement pre;
//        
//        ResultSet resultSet;
//        ArrayList<Receta> receta = new ArrayList<>();
//        
//        try {
//            pre = conexion.getConnection().prepareStatement(SQL_READALL);
//            resultSet = pre.executeQuery();
//            
//            while (resultSet.next()) {                
//                receta.add(new Receta(resultSet.getString("foto"), resultSet.getString("nombre_receta"), resultSet.getString("autor"), resultSet.getDate("fecha"), resultSet.getString("ingredientes"), resultSet.getString("descripcion")));
//            }
//        } catch (Exception e) {
//            System.out.println(e);
//        }finally{
//            conexion.cerrarConexion();
//        }
//        return receta;
    }

    public List<Receta> listar() {
        PreparedStatement pre;
        CallableStatement cstmt;
        Connection cn = conexion.getConnection();
        List<Receta> lista = new ArrayList<>();
        try {
            pre = conexion.getConnection().prepareStatement(SQL_READALL);
            String llamarProcedimiento = "{call Sp_Listar_Receta(?)}";
            CallableStatement cs = cn.prepareCall(llamarProcedimiento);
            cs.registerOutParameter(1, OracleTypes.CURSOR);

            cs.executeQuery();

            ResultSet rs = (ResultSet) cs.getObject(1);

            while (rs.next()) {
                Receta receta = new Receta();
                receta.setId_receta(rs.getInt("id_receta"));
                receta.setFoto(rs.getString("foto"));
                receta.setNombre_receta(rs.getString("nombre_receta"));
                receta.setAutor(rs.getString("autor"));
                receta.setFecha(rs.getDate("fecha"));
                receta.setIngredientes(rs.getString("ingredientes"));
                receta.setDescripcion(rs.getString("descripcion"));

                lista.add(receta);
            }
        } catch (Exception e) {
            System.out.println(e.getMessage());
        } finally {
            conexion.cerrarConexion();
            return lista;
        }
    }
}
