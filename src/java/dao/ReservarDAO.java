package dao;

import Interface.Metodos;
import dto.Reserva;
import java.sql.PreparedStatement;
import java.util.List;
import modelo.Conexion;

public class ReservarDAO implements Metodos<Reserva> {

    private static final String SQL_INSERT = "{call Sp_Agregar_Reserva(?,?,?,?,?,?,?,?)}";
    private static final String SQL_DELETE = "{call Sp_Eliminar_Reserva_Rut(?)}";

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

}
