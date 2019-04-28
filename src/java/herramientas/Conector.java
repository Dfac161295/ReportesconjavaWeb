package herramientas;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

public class Conector {
    

    public Connection conectar() {

        Connection c = null;

        try {
            
            Class.forName("oracle.jdbc.OracleDriver").newInstance();
            c = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "UREST", "1234");
            System.out.println("Coneccion exitosa!");
            
        } catch (ClassNotFoundException ex) {
            System.out.println(ex.getMessage());
        } catch (InstantiationException ex) {
            System.out.println(ex.getMessage());
        } catch (IllegalAccessException ex) {
            System.out.println(ex.getMessage());
        } catch (SQLException ex) {
            Logger.getLogger(Conector.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return c;
    }

    
    
    
    
    
    
    public void desconectar (Connection c){
    
        try {
            c.close();
            System.out.println("Desconexion exitosa!");
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        }
    
    }
    
    
    
    
    public ResultSet Consultas (Connection c,String sql){
        
        Statement st = null;
        ResultSet rs = null;
        
        try {
            
             st = c.createStatement();
             rs = st.executeQuery(sql);
             
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        }
        return rs;
    }
    
    
    
    public Integer transacciones(Connection c,String sql){
        Statement st = null;
        ResultSet rs = null;
        
        try {
            
             st = c.createStatement();
             st.executeUpdate(sql);
             return 1;
             
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
            return 0;
        }
    }
    
    
    
}
