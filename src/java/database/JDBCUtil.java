/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package database;

import config.Settings;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author ADMIN
 */
public class JDBCUtil {
    public static Connection getConnection() {
        Connection c = null;
        
        try {
            // Register the SQL Server JDBC driver
            Class.forName(Settings.DRIVER_NAME);
            
            // Connection parameters
            String url = "jdbc:sqlserver://"+ Settings.SERVER+ ":"+Settings.PORT+";databaseName="+Settings.DATABASE_NAME+";encrypt=false";
            
            // Create the connection
            c = DriverManager.getConnection(url, Settings.USER, Settings.PASSWORD);
            
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
        
        return c;
    }
    
    public static void closeConnection(Connection c) {
        try {
            if (c != null) {
                c.close();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
