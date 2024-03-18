/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package context;
import java.lang.System.Logger.Level;
import java.util.logging.Logger;
import java.sql.DriverManager;
import java.sql.Connection;
import java.sql.SQLException;
/**
 *
 * @author Hoangvan
 */
public class DBContext {
    protected Connection connection;
    public DBContext() {
        try {
            String user ="sa";
            String pass ="123";
            String url ="jdbc:sqlserver://localhost\\SQLEXPRESS:1433;databaseName=project1";
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            connection = DriverManager.getConnection(url, user, pass);
             System.out.println("Connected to the database");
        } catch (ClassNotFoundException | SQLException ex) {
            System.out.println(ex);
        }
    }
    public static void main(String[] args) {
        try{
            System.out.println(new DBContext());
        }catch (Exception e){
            
        }
    }
}
