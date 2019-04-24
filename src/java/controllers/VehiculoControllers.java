/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

/**
 *
 * @author NixonD
 */

import co.edu.uniminuto.pa.DAOs.VehiculoDAO;
import co.edu.uniminuto.pa.DTOs.Vehiculo;
import co.edu.uniminuto.pa.bds.PGPDataSource;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.support.SessionStatus;
 
@Controller
@RequestMapping("/")
public class VehiculoControllers {
 /*
    @RequestMapping(method = RequestMethod.GET)
    public String helloWorld(ModelMap modelMap) {
        System.out.println("personaCrear");
        modelMap.put("mensajePersona", "Pase por el controller de Persona");
        return "persona_crear";
    }
    */
@RequestMapping(method = RequestMethod.GET, value = "VehiculosCrear.htm")
    public String processSubmit(HttpServletRequest req, SessionStatus status,ModelMap model) 
    {

        System.out.println("VehiculosCrear");
        model.put("mensajeVehiculo", "Pase por el controller de Vehiculo:::"+req.getParameter("nombre"));
        return "vehiculo-crear";
    }    
    
@RequestMapping(method = RequestMethod.POST, value = "vehiculoRegistrar.htm")
    public String processSubmit1(HttpServletRequest req, SessionStatus status,ModelMap model) 
    {

        VehiculoDAO pDao = new VehiculoDAO();
            
        Logger.getLogger(VehiculoControllers.class.getName()).log(Level.INFO, "Ejecutando processSubmit1...");

        int id = pDao.obtenerId(PGPDataSource.getConexionBD());
        String nombre = req.getParameter("nombre");
        String costo = req.getParameter("costo");
        String precio = req.getParameter("precio");
        String matricula = req.getParameter("matricula");
        String año = req.getParameter("año");
        String cilindraje = req.getParameter("cilindraje");
        String color = req.getParameter("color");
        String sillas = req.getParameter("sillas");
        String marca = req.getParameter("marca");
        String pais = req.getParameter("pais");
        
        Vehiculo p = new Vehiculo();
        p.setId(id);
        p.setNombre(nombre);
        p.setCosto(costo);
        p.setPrecio(precio);
        p.setMatricula(matricula);
        p.setAño(año);
        p.setCilindraje(cilindraje);
        p.setColor(color);
        p.setSillas(sillas);
        p.setMarca(marca);
        p.setPais(pais);                                    
            
        boolean insert = pDao.crearVehiculo(p, PGPDataSource.getConexionBD());

        Logger.getLogger(VehiculoControllers.class.getName()).log(Level.SEVERE, null, "Registrar + " + nombre + "-" + insert);
        
        if (insert)
            
            model.put("mensaje", "El registro fue creado satisfactoriamente!!!");
        else
            model.put("mensaje", "El registro NO fue creado, consulte con el administrador...");
        
        return "vehiculo-crear";
    }     
    
@RequestMapping(method = RequestMethod.GET, value = "VehiculosConsultar.htm")
    public String processSubmit2(HttpServletRequest req, SessionStatus status,ModelMap model) 
    {      
        Logger.getLogger(VehiculoControllers.class.getName()).log(Level.INFO, "Ejecutando processSubmit2...");
        return "vehiculo-consulta";
    } 
    
@RequestMapping(method = RequestMethod.POST, value = "vehiculoConsultarForm.htm")
    public String processSubmit3(HttpServletRequest req, SessionStatus status,ModelMap model) 
    {

        VehiculoDAO pDao = new VehiculoDAO();
            
        Logger.getLogger(VehiculoDAO.class.getName()).log(Level.INFO, "Ejecutando processSubmit3...");

        int id = pDao.obtenerId(PGPDataSource.getConexionBD());
        String nombre = req.getParameter("nombre");
        String costo = req.getParameter("costo");
        
        Vehiculo p = new Vehiculo();
        p.setId(id);
        p.setNombre(nombre);
        p.setCosto(costo);
            
        List<Vehiculo> datos = pDao.consultarVehiculo(p, PGPDataSource.getConexionBD());

        Logger.getLogger(VehiculoControllers.class.getName()).log(Level.SEVERE, null, "Consultar + " + nombre + "-" + datos.size());
        
        model.put("listavehiculo", datos);
        if (datos.size() > 0)
            model.put("mensaje", "La consulta se realizo satisfactoriamente!!! <br> Datos encontrados: " + datos.size());
        else
            model.put("mensaje", "La consulta NO tiene resultados...");
        
        return "vehiculo-consulta";
    }     
    
@RequestMapping(method = RequestMethod.GET, value = "VehiculosEditar.htm")
    public String processSubmit4(HttpServletRequest req, SessionStatus status,ModelMap model) 
    {      
        Logger.getLogger(VehiculoControllers.class.getName()).log(Level.INFO, "Ejecutando processSubmit4...");
        return "vehiculo-editar";
    } 
    
@RequestMapping(method = RequestMethod.POST, value = "vehiculoEditarForm1.htm")
    public String processSubmit5(HttpServletRequest req, SessionStatus status,ModelMap model) 
    {

        VehiculoDAO pDao = new VehiculoDAO();
            
        Logger.getLogger(VehiculoDAO.class.getName()).log(Level.INFO, "Ejecutando processSubmit5...");

        int id = pDao.obtenerId(PGPDataSource.getConexionBD());
        String nombre = req.getParameter("nombre");
        String costo = req.getParameter("costo");
        
        Vehiculo p = new Vehiculo();
        p.setId(id);
        p.setNombre(nombre);
        p.setCosto(costo);
            
        List<Vehiculo> datos = pDao.consultarVehiculo(p, PGPDataSource.getConexionBD());

        Logger.getLogger(VehiculoControllers.class.getName()).log(Level.SEVERE, null, "Consultar + " + nombre + "-" + datos.size());
        
        model.put("listavehiculo", datos);
        
        
        return "vehiculo-editar";
        
    }    
    
@RequestMapping(method = RequestMethod.POST, value = "vehiculoEditarForm2.htm")
    public String processSubmit6(HttpServletRequest req, SessionStatus status,ModelMap model) 
    {

        VehiculoDAO pDao = new VehiculoDAO();
            
        Logger.getLogger(VehiculoDAO.class.getName()).log(Level.INFO, "Ejecutando processSubmit6...");

        int id = Integer.parseInt(req.getParameter("id"));
        String nombre = req.getParameter("nombre");
        String costo = req.getParameter("costo");
        String precio = req.getParameter("precio");
        String matricula = req.getParameter("matricula");
        String año = req.getParameter("año");
        String cilindraje = req.getParameter("cilindraje");
        String color = req.getParameter("color");
        String sillas = req.getParameter("sillas");
        String marca = req.getParameter("marca");
        String pais = req.getParameter("pais");
        
        Logger.getLogger(VehiculoDAO.class.getName()).log(Level.INFO, "Id vehiculo: " + id);
        
        Vehiculo p = new Vehiculo();
        p.setId(id);
        p.setNombre(nombre);
        p.setCosto(costo);
        p.setPrecio(precio);
        p.setMatricula(matricula);
        p.setAño(año);
        p.setCilindraje(cilindraje);
        p.setColor(color);
        p.setSillas(sillas);
        p.setMarca(marca);
        p.setPais(pais);
            
        boolean res = pDao.editarVehiculo(p, PGPDataSource.getConexionBD());                         
        
        if (res)
            model.put("mensaje", "Se edito satisfactoriamente!!!");
        else
            model.put("mensaje", "NO se guardaron los cambios...");
        
        return "vehiculo-editar";
        
    }    
}