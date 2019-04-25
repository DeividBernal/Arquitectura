/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package co.edu.uniminuto.pa.DAOs;

import co.edu.uniminuto.pa.DTOs.Parametros;
import co.edu.uniminuto.pa.DTOs.Vehiculo;
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
public class VehiculoDAO {
    
    public boolean crearVehiculo(Vehiculo p, Connection con)
    {
        PreparedStatement pstmt = null;
        boolean respuesta = false;
        try {            
            //se realizo cambio
            Logger.getLogger(VehiculoDAO.class.getName()).log(Level.INFO, "Ejecutando crearVehiculo...");
            
            pstmt = con.prepareStatement("INSERT INTO vehiculo "
                    + " VALUES (?,?,?,?,?,?,?,?,?,?,?)");
            
            pstmt.setInt(1,p.getId());
            pstmt.setString(2, p.getNombre());
            pstmt.setString(3, p.getCosto());
            pstmt.setString(4, p.getPrecio());
            pstmt.setString(5, p.getMatricula());
            pstmt.setString(6, p.getAño());
            pstmt.setString(7, p.getCilindraje());
            pstmt.setString(8, p.getColor());
            pstmt.setString(9, p.getSillas());
            pstmt.setInt(10, Integer.parseInt(p.getMarca()));
            pstmt.setInt(11, Integer.parseInt(p.getPais()));
            
            pstmt.execute();
            
            con.close();
            
            respuesta = true;
        } catch (SQLException ex) {
            Logger.getLogger(VehiculoDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return respuesta;

    }

    public ArrayList<Vehiculo> consultarVehiculo(Connection con, String nombre, String costo)
    {
        
        ArrayList<Vehiculo> datos = new ArrayList();
        
        Logger.getLogger(VehiculoDAO.class.getName()).log(Level.INFO, "Ejecutando consultarPersona...");
        
        try {
            
            String whereNombres = "";
            String whereCosto = "";
            
            if(nombre != "")
                whereNombres = " nombre='" + nombre+"'";
            else
                whereNombres = " nombre=nombre ";
            
            if(costo != "")
                    whereCosto = " and costo='" + costo+"'";
            else
                whereCosto = " and costo=costo";
            
            Statement s = con.createStatement();
            ResultSet rs = s.executeQuery ("select nombre, costo, precio, "
                    + " matricula, año, cilindraje, color, sillas, "
                    + " id_vehiculo, ma.descripcion as marca, pa.descripcion as pais "
                    + " from vehiculo v "
                    + " left join marcas ma on ma.idmarca = v.idmarca "
                    + " left join paises pa on pa.idpais = v.idpais "
                    + " where "
                    + whereNombres
                    + whereCosto);
            
            while (rs.next())
            { 
                Vehiculo veh = new Vehiculo();
                veh.setNombre(rs.getString(1));
                veh.setCosto(rs.getString(2));
                veh.setPrecio(rs.getString(3));
                veh.setMatricula(rs.getString(4));
                veh.setAño(rs.getString(5));
                veh.setCilindraje(rs.getString(6));
                veh.setColor(rs.getString(7));
                veh.setSillas(rs.getString(8));
                veh.setId(rs.getInt(9));
                veh.setMarca(rs.getString(10));
                veh.setPais(rs.getString(11));
                
                datos.add(veh);
                
            }
            
            Logger.getLogger(VehiculoDAO.class.getName()).log(Level.INFO, "Ejecutando consultarVehiculo fin..." + datos.size());
            
            con.close();
        } catch (SQLException ex) {
            Logger.getLogger(VehiculoDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return datos;
    }
    
    public ArrayList<Parametros> consultarParametros(Connection con, int tipo)
    {
        ArrayList<Parametros> datos = new ArrayList();
        
        Logger.getLogger(VehiculoDAO.class.getName()).log(Level.INFO, "Ejecutando consultarPersona...");
        
        try {
            ResultSet rs;
            Statement s = con.createStatement();
            
            if(tipo == 1)
                rs = s.executeQuery ("select pa.idpais, pa.descripcion "
                    + " from paises pa order by  pa.descripcion");
            else
                rs = s.executeQuery ("select ma.idmarca, ma.descripcion "
                    + " from marcas ma order by  ma.descripcion");
            
            while (rs.next())
            { 
                Parametros param = new Parametros();
                param.setId(rs.getInt(1));
                param.setDescripcion(rs.getString(2));
                
                datos.add(param);
            }
            
            Logger.getLogger(VehiculoDAO.class.getName()).log(Level.INFO, "Ejecutando consultarVehiculo fin..." + datos.size());
            
            con.close();
        } catch (SQLException ex) {
            Logger.getLogger(VehiculoDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return datos;
    }
    
    public int obtenerId(Connection con)
    {
        int id = -1;
        try {
            Statement s = con.createStatement();
            ResultSet rs = s.executeQuery ("select max(COALESCE(id_vehiculo, 0))+1 from vehiculo");
            
            while (rs.next())
            { 
                id = rs.getInt(1);
            }

            con.close();
        } catch (SQLException ex) {
            Logger.getLogger(VehiculoDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return id;
    }
         
    public boolean editarVehiculo(Vehiculo v, Connection con)
    {
        PreparedStatement pstmt = null;
        boolean respuesta = false;
        try {            
            
            Logger.getLogger(VehiculoDAO.class.getName()).log(Level.INFO, "Ejecutando editarVehiculo...");
            
            pstmt = con.prepareStatement("UPDATE vehiculo "
                    + " SET "
                    + " nombre=?"
                    + " , costo=?"
                    + " , precio=?"
                    + " where id_vehiculo=?");
                        
            pstmt.setString(1, v.getNombre());
            pstmt.setString(2, v.getCosto());
            pstmt.setString(3, v.getPrecio());
            pstmt.setInt(4, v.getId());
            
            pstmt.executeUpdate();
            
            con.close();
            
            respuesta = true;
        } catch (SQLException ex) {
            Logger.getLogger(VehiculoDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return respuesta;

    }
}
