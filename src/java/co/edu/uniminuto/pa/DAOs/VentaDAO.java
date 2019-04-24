/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package co.edu.uniminuto.pa.DAOs;

import co.edu.uniminuto.pa.DTOs.Venta;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author nixoduaa
 */
public class VentaDAO {
    
    
    
    public boolean crearPersona(Venta v, Connection con)
    {
        PreparedStatement pstmt = null;
        boolean respuesta = false;
        try {            
            //se realizo cambio
            Logger.getLogger(VentaDAO.class.getName()).log(Level.INFO, "Ejecutando crearVenta...");
            
            pstmt = con.prepareStatement("INSERT INTO venta "
                    + " VALUES (?,?,?,?,?,?,?)");
            
            pstmt.setInt(1,v.getId());
            pstmt.setString(2, v.getFecha());
            pstmt.setString(3, v.getPrecio());
            pstmt.setString(4, v.getCantidad());
            pstmt.setString(5, v.getMarca());
            pstmt.setString(6, v.getDescripcion());
            pstmt.setString(7, v.getAsesor());
            
            pstmt.execute();
            
            con.close();
            
            respuesta = true;
        } catch (SQLException ex) {
            Logger.getLogger(VentaDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return respuesta;

    }

    public ArrayList<Venta> consultarVenta(Venta v, Connection con)
    {
        
        ArrayList<Venta> datos = new ArrayList();
        
        Logger.getLogger(VentaDAO.class.getName()).log(Level.INFO, "Ejecutando consultarPersona...");
        
        try {
            Statement s = con.createStatement();
            ResultSet rs = s.executeQuery ("select fecha, precio,cantidad, "
                    + " marca, descripcion, asesor, id_venta "
                    + " from venta "
                    + " where "
                    + " fecha='" + v.getFecha()+"'"
                    + " AND precio='"+v.getPrecio()+"'");
            
            while (rs.next())
            { 
                Venta ven = new Venta();
                ven.setFecha(rs.getString(1));
                ven.setPrecio(rs.getString(2));
                ven.setCantidad(rs.getString(3));
                ven.setMarca(rs.getString(4));
                ven.setDescripcion(rs.getString(5));
                ven.setAsesor(rs.getString(6));              
                
                datos.add(ven);
                
            }
            
            Logger.getLogger(VentaDAO.class.getName()).log(Level.INFO, "Ejecutando consultarVenta fin..." + datos.size());
            
            con.close();
        } catch (SQLException ex) {
            Logger.getLogger(VentaDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return datos;
    }
    
    
    public int obtenerId(Connection con)
    {
        int id = -1;
        try {
            Statement s = con.createStatement();
            ResultSet rs = s.executeQuery ("select max(id_venta)+1 from venta");
            
            while (rs.next())
            { 
                id = rs.getInt(1);
            }

            con.close();
        } catch (SQLException ex) {
            Logger.getLogger(VentaDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return id;
    }
         
    public boolean editarVenta(Venta v, Connection con)
    {
        PreparedStatement pstmt = null;
        boolean respuesta = false;
        try {            
            
            Logger.getLogger(VentaDAO.class.getName()).log(Level.INFO, "Ejecutando editarVenta...");
            
            pstmt = con.prepareStatement("UPDATE venta "
                    + " SET "
                    + " fecha=?"
                    + " , precio=?"
                    + " , cantidad=?"
                    + " where id_venta=?");
                        
            pstmt.setString(1, v.getFecha());
            pstmt.setString(2, v.getPrecio());
            pstmt.setString(3, v.getCantidad());
            pstmt.setInt(4, v.getId());
            
            pstmt.executeUpdate();
            
            con.close();
            
            respuesta = true;
        } catch (SQLException ex) {
            Logger.getLogger(VentaDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return respuesta;

    }
}
