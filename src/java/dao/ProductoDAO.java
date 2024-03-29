/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import dto.Producto;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import modelo.Conexion;
import oracle.jdbc.OracleCallableStatement;
import oracle.jdbc.OracleTypes;

/**
 *
 * @author Carlitos
 */
public class ProductoDAO extends Conexion {

    private static final String SQL_READALL = "{call Sp_Listar_Producto(?)}";

    private static final String SQL_READALL_MENU = "{call Sp_Listar_Producto_Menu(?)}";

    private static final String SQL_READALL_PLATO = "{call Sp_Listar_Producto_Plato(?)}";

    private static final String SQL_READALL_EXTRA = "{call Sp_Listar_Producto_Extra(?)}";

    private static final String SQL_INSERT = "{call Sp_Agregar_Producto(?,?,?,?,?,?,?)}";

    private static final Conexion conexion = Conexion.estado();

    public List<Producto> readAll() {
        PreparedStatement pre;
        CallableStatement cstmt;
        Connection cn = conexion.getConnection();
        List<Producto> lista = new ArrayList<>();
        try {
            pre = conexion.getConnection().prepareStatement(SQL_READALL);
            String llamarProcedimiento = "{call Sp_Listar_Producto(?)}";
            CallableStatement cs = cn.prepareCall(llamarProcedimiento);
            cs.registerOutParameter(1, OracleTypes.CURSOR);

            cs.execute();

            ResultSet rs = (ResultSet) cs.getObject(1);

            while (rs.next()) {
                Producto producto = new Producto();
                producto.setId_producto(rs.getInt("id_producto"));
                producto.setNombre(rs.getString("nombre"));
                producto.setDescripcion(rs.getString("descripcion"));
                producto.setPrecio(rs.getInt("precio"));
                producto.setFoto(rs.getString("foto"));

                lista.add(producto);
            }
        } catch (Exception e) {
            System.out.println(e.getMessage());
        } finally {
            conexion.cerrarConexion();
            return lista;
        }
    }

    public Producto getProducto(int id) {
        Producto producto = null;

        try {
            Connection cn = conexion.getConnection();
            CallableStatement cstmt = cn.prepareCall("{ ? = call Fn_Listar_Producto(?)}");
            cstmt.setInt(2, id);
            cstmt.registerOutParameter(1, OracleTypes.CURSOR);
            cstmt.execute();

            ResultSet rs = ((OracleCallableStatement) cstmt).getCursor(1);
            while (rs.next()) {
                producto = new Producto(rs.getInt("id_producto"), rs.getString("nombre"), rs.getString("descripcion"), rs.getInt("precio"), rs.getString("foto"));
            }
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
        return producto;
    }

    public boolean create(Producto producto) {
        PreparedStatement pre;
        try {
            pre = conexion.getConnection().prepareCall(SQL_INSERT);
            pre.setString(1, producto.getNombre());
            pre.setString(2, producto.getDescripcion());
            pre.setInt(3, producto.getPrecio());
            pre.setString(4, producto.getFoto());
            pre.setInt(5, producto.getTipo_producto());
            pre.setInt(6, producto.getId_insumo());
            pre.setInt(7, producto.getId_receta());

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

    public List<Producto> readAllMenu() {
        PreparedStatement pre;
        CallableStatement cstmt;
        Connection cn = conexion.getConnection();
        List<Producto> lista = new ArrayList<>();
        try {
            pre = conexion.getConnection().prepareStatement(SQL_READALL);
            String llamarProcedimiento = "{call Sp_Listar_Producto_Menu(?)}";
            CallableStatement cs = cn.prepareCall(llamarProcedimiento);
            cs.registerOutParameter(1, OracleTypes.CURSOR);

            cs.execute();

            ResultSet rs = (ResultSet) cs.getObject(1);

            while (rs.next()) {
                Producto producto = new Producto();
                producto.setId_producto(rs.getInt("id_producto"));
                producto.setNombre(rs.getString("nombre"));
                producto.setDescripcion(rs.getString("descripcion"));
                producto.setPrecio(rs.getInt("precio"));
                producto.setFoto(rs.getString("foto"));

                lista.add(producto);
            }
        } catch (Exception e) {
            System.out.println(e.getMessage());
        } finally {
            conexion.cerrarConexion();
            return lista;
        }
    }

    public List<Producto> readAllPlato() {
        PreparedStatement pre;
        CallableStatement cstmt;
        Connection cn = conexion.getConnection();
        List<Producto> lista = new ArrayList<>();
        try {
            pre = conexion.getConnection().prepareStatement(SQL_READALL);
            String llamarProcedimiento = "{call Sp_Listar_Producto_Plato(?)}";
            CallableStatement cs = cn.prepareCall(llamarProcedimiento);
            cs.registerOutParameter(1, OracleTypes.CURSOR);

            cs.execute();

            ResultSet rs = (ResultSet) cs.getObject(1);

            while (rs.next()) {
                Producto producto = new Producto();
                producto.setId_producto(rs.getInt("id_producto"));
                producto.setNombre(rs.getString("nombre"));
                producto.setDescripcion(rs.getString("descripcion"));
                producto.setPrecio(rs.getInt("precio"));
                producto.setFoto(rs.getString("foto"));

                lista.add(producto);
            }
        } catch (Exception e) {
            System.out.println(e.getMessage());
        } finally {
            conexion.cerrarConexion();
            return lista;
        }
    }

    public List<Producto> readAllExtra() {
        PreparedStatement pre;
        CallableStatement cstmt;
        Connection cn = conexion.getConnection();
        List<Producto> lista = new ArrayList<>();
        try {
            pre = conexion.getConnection().prepareStatement(SQL_READALL);
            String llamarProcedimiento = "{call Sp_Listar_Producto_Extra(?)}";
            CallableStatement cs = cn.prepareCall(llamarProcedimiento);
            cs.registerOutParameter(1, OracleTypes.CURSOR);

            cs.execute();

            ResultSet rs = (ResultSet) cs.getObject(1);

            while (rs.next()) {
                Producto producto = new Producto();
                producto.setId_producto(rs.getInt("id_producto"));
                producto.setNombre(rs.getString("nombre"));
                producto.setDescripcion(rs.getString("descripcion"));
                producto.setPrecio(rs.getInt("precio"));
                producto.setFoto(rs.getString("foto"));

                lista.add(producto);
            }
        } catch (Exception e) {
            System.out.println(e.getMessage());
        } finally {
            conexion.cerrarConexion();
            return lista;
        }
    }

}
