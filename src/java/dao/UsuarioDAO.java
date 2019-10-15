/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import Interface.Validar;
import dto.Usuario;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import modelo.Conexion;



/**
 *
 * @author Carlitos
 */
public class UsuarioDAO implements Validar {

    Connection con;
    Conexion c = new Conexion();
    PreparedStatement ps;
    ResultSet rs;
    int r;

    @Override
    public int validar(Usuario u) {
        int r =0;
        String sql = "select usuario, contrasena, nombre, apellido, id_tipo from usuario inner join tipo_usuario on usuario.tipo_usuario_id_tipo = tipo_usuario.id_tipo where usuario=? and contrasena=?";
        try {
            con = c.getConnection();
            ps = con.prepareStatement(sql);
            ps.setString(1, u.getUsuario());
            ps.setString(2, u.getContrasena());
            rs = ps.executeQuery();
            while (rs.next()) {
                r = r + 1;
                u.setUsuario(rs.getString("usuario"));
                u.setContrasena(rs.getString("contrasena"));
                u.setNombre(rs.getString("nombre"));
                u.setApellido(rs.getString("apellido"));
                u.setTipo_usuario(rs.getInt("id_tipo"));
            }
            if (r == 1) {
                return 1;
            } else {
                return 0;
            }

        } catch (Exception e) {
            System.out.println(e);
            return 0;
        }
    }

}
