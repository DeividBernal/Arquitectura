/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;



import co.edu.uniminuto.pa.DAOs.GarantiaDAO;
import co.edu.uniminuto.pa.DTOs.Garantia;
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
public class GarantiaControllers {
 /*
    @RequestMapping(method = RequestMethod.GET)
    public String helloWorld(ModelMap modelMap) {
        System.out.println("personaCrear");
        modelMap.put("mensajePersona", "Pase por el controller de Persona");
        return "persona_crear";
    }
    */
@RequestMapping(method = RequestMethod.GET, value = "GarantiaCrear.htm")
    public String processSubmit(HttpServletRequest req, SessionStatus status,ModelMap model) 
    {

        System.out.println("GarantiaCrear");
        model.put("mensajeGarantia", "Pase por el controller de Garantia:::"+req.getParameter("fecha"));
        return "garantia-crear";
    }    
    
@RequestMapping(method = RequestMethod.POST, value = "garantiaRegistrar.htm")
    public String processSubmit1(HttpServletRequest req, SessionStatus status,ModelMap model) 
    {

        GarantiaDAO pDao = new GarantiaDAO();
            
        Logger.getLogger(GarantiaControllers.class.getName()).log(Level.INFO, "Ejecutando processSubmit1...");

        int id = pDao.obtenerId(PGPDataSource.getConexionBD());
        String fecha = req.getParameter("fecha");
        String lugar = req.getParameter("lugar");
        String descri = req.getParameter("descri");
        
        Garantia p = new Garantia();
        p.setId(id);
        p.setFecha(fecha);
        p.setLugar(lugar);
        p.setDescri(descri);
                                                     
        boolean insert = pDao.crearGarantia(p, PGPDataSource.getConexionBD());

        Logger.getLogger(GarantiaControllers.class.getName()).log(Level.SEVERE, null, "Registrar + " + fecha + "-" + insert);
        
        if (insert)
            
            model.put("mensaje", "El registro fue creado satisfactoriamente!!!");
        else
            model.put("mensaje", "El registro NO fue creado, consulte con el administrador...");
        
        return "garantia-crear";
    }     
    
@RequestMapping(method = RequestMethod.GET, value = "GarantiaConsulta.htm")
    public String processSubmit2(HttpServletRequest req, SessionStatus status,ModelMap model) 
    {      
        Logger.getLogger(GarantiaControllers.class.getName()).log(Level.INFO, "Ejecutando processSubmit2...");
        return "garantia-consulta";
    } 
    
@RequestMapping(method = RequestMethod.POST, value = "garantiaConsultarForm.htm")
    public String processSubmit3(HttpServletRequest req, SessionStatus status,ModelMap model) 
    {

        GarantiaDAO pDao = new GarantiaDAO();
            
        Logger.getLogger(GarantiaDAO.class.getName()).log(Level.INFO, "Ejecutando processSubmit3...");

        int id = pDao.obtenerId(PGPDataSource.getConexionBD());
        String fecha = req.getParameter("fecha");
        String lugar = req.getParameter("lugar");
        
        Garantia p = new Garantia();
        p.setId(id);
        p.setFecha(fecha);
        p.setLugar(lugar);
            
        List<Garantia> datos = pDao.consultarGarantia(p, PGPDataSource.getConexionBD());

        Logger.getLogger(GarantiaControllers.class.getName()).log(Level.SEVERE, null, "Consultar + " + fecha + "-" + datos.size());
        
        model.put("listaGarantia", datos);
        if (datos.size() > 0)
            model.put("mensaje", "La consulta se realizo satisfactoriamente!!! <br> Datos encontrados: " + datos.size());
        else
            model.put("mensaje", "La consulta NO tiene resultados...");
        
        return "garantia-consulta";
    }     
    
@RequestMapping(method = RequestMethod.GET, value = "GarantiaEditar.htm")
    public String processSubmit4(HttpServletRequest req, SessionStatus status,ModelMap model) 
    {      
        Logger.getLogger(GarantiaControllers.class.getName()).log(Level.INFO, "Ejecutando processSubmit4...");
        return "garantia-editar";
    } 
    
@RequestMapping(method = RequestMethod.POST, value = "garantiaEditarForm1.htm")
    public String processSubmit5(HttpServletRequest req, SessionStatus status,ModelMap model) 
    {

        GarantiaDAO pDao = new GarantiaDAO();
            
        Logger.getLogger(GarantiaDAO.class.getName()).log(Level.INFO, "Ejecutando processSubmit5...");

        int id = pDao.obtenerId(PGPDataSource.getConexionBD());
        String fecha = req.getParameter("fecha");
        String lugar = req.getParameter("lugar");
        
        Garantia p = new Garantia();
        p.setId(id);
        p.setFecha(fecha);
        p.setLugar(lugar);
            
        List<Garantia> datos = pDao.consultarGarantia(p, PGPDataSource.getConexionBD());

        Logger.getLogger(GarantiaControllers.class.getName()).log(Level.SEVERE, null, "Consultar + " + fecha + "-" + datos.size());
        
        model.put("listaGarantia", datos);
        
        
        return "garantia-editar";
        
    }    
    
@RequestMapping(method = RequestMethod.POST, value = "garantiaEditarForm2.htm")
    public String processSubmit6(HttpServletRequest req, SessionStatus status,ModelMap model) 
    {

        GarantiaDAO pDao = new GarantiaDAO();
            
        Logger.getLogger(GarantiaDAO.class.getName()).log(Level.INFO, "Ejecutando processSubmit6...");

        int id = Integer.parseInt(req.getParameter("id"));
        String fecha = req.getParameter("fecha");
        String lugar = req.getParameter("lugar");
        String descri = req.getParameter("descri");
        
        Logger.getLogger(GarantiaDAO.class.getName()).log(Level.INFO, "id_garantia: " + id);
        
        Garantia p = new Garantia();
        p.setId(id);
        p.setFecha(fecha);
        p.setLugar(lugar);
        p.setDescri(descri);
        
        boolean res = pDao.editarGarantia(p, PGPDataSource.getConexionBD());                         
        
        if (res)
            model.put("mensaje", "Se edito satisfactoriamente!!!");
        else
            model.put("mensaje", "NO se guardaron los cambios...");
        
        return "garantia-editar";
        
    }    
}