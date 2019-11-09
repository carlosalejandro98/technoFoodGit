package dao;

import Interface.Metodos;
import dto.Receta;
import dto.Reserva;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import modelo.Conexion;
import oracle.jdbc.OracleCallableStatement;
import oracle.jdbc.OracleTypes;

public class ReservarDAO implements Metodos<Reserva> {

    private static final String SQL_INSERT = "{call Sp_Agregar_Reserva(?,?,?,?,?,?,?,?)}";
    private static final String SQL_DELETE = "{call Sp_Eliminar_Reserva_Rut(?)}";
    private static final String SQL_READALL = "{call Sp_Listar_Reserva_por_Rut(?)}";

    private static final Conexion conexion = Conexion.estado();

    @Override
    public boolean create(Reserva generico) {
        PreparedStatement pre;
        try {
            pre = conexion.getConnection().prepareCall(SQL_INSERT);
            pre.setString(1, generico.getRut());
            pre.setString(2, generico.getNombre());
            pre.setString(3, generico.getApellido());
            pre.setInt(4, generico.getTelefono());
            pre.setString(5, generico.getCorreo());
            pre.setInt(6, generico.getAsiento());
            pre.setDate(7, generico.getFecha());
            pre.setInt(8, generico.getId_mesa());

            // Nos retorna un 1 cuando se ejecuta correctamente.
            // Nos retorna un 0 cuando no se ejecuta correctamente.
            if (pre.executeUpdate() > 0) {
                return true;
            }

        } catch (Exception e) {
        } finally {
            conexion.cerrarConexion();
        }
        return false;
    }

    @Override
    public boolean delete(Reserva generico) {
        PreparedStatement pre;
        try {
            pre = conexion.getConnection().prepareCall(SQL_DELETE);
            pre.setString(1, generico.getRut());

            if (pre.executeUpdate() > 0) {
                return true;
            }
        } catch (Exception e) {
            System.out.println("Error: " + e.getMessage());
        } finally {
            conexion.cerrarConexion();
        }
        return false;
    }

    @Override
    public boolean update(Reserva generico) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public Reserva read(Object pk) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public List<Reserva> readAll() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

     public Reserva getReserva(String rut) {
        Reserva reserva = null;
        
        try {
            
           Connection cn = conexion.getConnection();
          
            CallableStatement cstmt  = cn.prepareCall("{ ? = call Fn_Listar_Reserva_Rut(?)}");
            
            cstmt.setString(2, rut);
            
            cstmt.registerOutParameter(1, OracleTypes.CURSOR);
            
            cstmt.execute();
           
            ResultSet rs = ((OracleCallableStatement)cstmt).getCursor(1);
            while (rs.next()) {
                reserva = new Reserva(rs.getInt("id_reserva"), rs.getString("rut"), rs.getString("nombre"), rs.getString("apellido"), rs.getInt("asientos"), rs.getDate("fecha"));
            }

        } catch (Exception e) {
            System.out.println("" + e.getMessage());
        }
        return reserva;

    }
    public Reserva getProducto(String rut) {
        Reserva reserva = null;

        try {
            Connection cn = conexion.getConnection();
            CallableStatement cstmt = cn.prepareCall("{call Sp_Listar_Reserva_por_Rut(?)}");
            cstmt.setString(2, rut);
            cstmt.registerOutParameter(1, OracleTypes.CURSOR);
            cstmt.execute();

            ResultSet rs = ((OracleCallableStatement) cstmt).getCursor(1);
            while (rs.next()) {
                reserva = new Reserva(rs.getInt("id_reserva"), rs.getString("rut"), rs.getString("nombre"), rs.getString("apellido"), rs.getInt("asientos"), rs.getDate("fecha"));
            }
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
        return reserva;
    }

    public List<Reserva> listar(String rut) {
        PreparedStatement pre;
        CallableStatement cstmt;
        Connection cn = conexion.getConnection();
        List<Reserva> lista = new ArrayList<>();
        try {
            pre = conexion.getConnection().prepareStatement(SQL_READALL);
            String llamarProcedimiento = "{call Sp_Listar_Reserva_por_Rut(?,?)}";
            CallableStatement cs = cn.prepareCall(llamarProcedimiento);
            cs.setString(2, rut);
            cs.registerOutParameter(1, OracleTypes.CURSOR);

            cs.executeQuery();

            ResultSet rs = (ResultSet) cs.getObject(1);

            while (rs.next()) {
                Reserva reserva = new Reserva();
                reserva.setId_reserva(rs.getInt("id_reserva"));
                reserva.setRut(rs.getString("rut"));
                reserva.setNombre(rs.getString("nombre"));
                reserva.setApellido(rs.getString("apellido"));
                reserva.setAsiento(rs.getInt("asientos"));
                reserva.setFecha(rs.getDate("fecha"));

                lista.add(reserva);
            }
        } catch (Exception e) {
            System.out.println(e.getMessage());
        } finally {
            conexion.cerrarConexion();
            return lista;
        }
    }
}
