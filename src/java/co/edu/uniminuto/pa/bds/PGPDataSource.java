/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package co.edu.uniminuto.pa.bds;

import org.postgresql.ds.PGPoolingDataSource;
import com.mysql.jdbc.jdbc2.optional.MysqlDataSource;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author nixoduaa
 */
public class PGPDataSource {
    private static PGPDataSource miPostDS = null;
    private static PGPoolingDataSource ds = null;
    
    private PGPDataSource(){
        ds = new PGPoolingDataSource();
        ds.setServerName("ec2-75-101-133-29.compute-1.amazonaws.com");
        ds.setPortNumber(5432);
        ds.setDatabaseName("danmvgidpbuken");
        ds.setUser("pssmryejgcyavb");
        ds.setPassword("9d726938b7404aa51ed52419dc595ce0d99ab5d296d9e76d8c070fbcaa3fa18d");        
    }
    
    public static Connection getConexionBD()
    {
        try {
            if (miPostDS == null)
            {
                miPostDS = new PGPDataSource();            
            }
            
            return ds.getConnection();
            
        } catch (SQLException ex) {
            Logger.getLogger(PGPDataSource.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return null;
    }
    
    
    
    
    
}
