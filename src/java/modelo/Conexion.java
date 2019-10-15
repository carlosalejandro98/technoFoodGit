package modelo;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author Carlitos
 */
public class Conexion {

    public static Conexion instancia; // Nos servira para utilizar el singleton.
    Connection con;

    public Connection getConnection() {
        try {
            Class.forName("oracle.jdbc.OracleDriver");
            con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "technoFood", "admin");
        } catch (Exception e) {
        }
        return con;
    }

    public synchronized static Conexion estado() {
        if (instancia == null) {
            instancia = new Conexion();
        }
        return instancia;
    }
    
    public void cerrarConexion() {
        instancia = null;
    }
    
    public Connection conexion() {
        return this.con;
    }
    
    

}
