/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;



import co.edu.uniminuto.pa.DAOs.VentaDAO;
import co.edu.uniminuto.pa.DTOs.Venta;
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
public class VentaControllers {
 /*
    @RequestMapping(method = RequestMethod.GET)
    public String helloWorld(ModelMap modelMap) {
        System.out.println("personaCrear");
        modelMap.put("mensajePersona", "Pase por el controller de Persona");
        return "persona_crear";
    }
    */
@RequestMapping(method = RequestMethod.GET, value = "ventaCrear.htm")
    public String processSubmit(HttpServletRequest req, SessionStatus status,ModelMap model) 
    {
        VentaDAO pDao = new VentaDAO();
            
        Logger.getLogger(VentaControllers.class.getName()).log(Level.INFO, "Ejecutando processSubmit1...");

        int id = pDao.obtenerId(PGPDataSource.getConexionBD());
        String fecha = req.getParameter("fecha");
        String lugar = req.getParameter("precio");
        String descri = req.getParameter("descri");
        
        Venta p = new Venta();
        p.setId(id);
        p.setFecha(fecha);
        p.setPrecio(lugar);
        //p.setDescri(descri);
                                                     
        boolean insert = pDao.crearVenta(p, PGPDataSource.getConexionBD());

        Logger.getLogger(GarantiaControllers.class.getName()).log(Level.SEVERE, null, "Registrar + " + fecha + "-" + insert);
        
        if (insert)
            
            model.put("mensaje", "El registro fue creado satisfactoriamente!!!");
        else
            model.put("mensaje", "El registro NO fue creado, consulte con el administrador...");
        
        model.put("mensajeVenta", "Pase por el controller de Venta:::"+req.getParameter("fecha"));
        return "venta-crear";
    }    
    
@RequestMapping(method = RequestMethod.POST, value = "ventaRegistrar.htm")
    public String processSubmit1(HttpServletRequest req, SessionStatus status,ModelMap model) 
    {

        VentaDAO vDao = new VentaDAO();
            
        Logger.getLogger(VentaControllers.class.getName()).log(Level.INFO, "Ejecutando processSubmit1...");

        int id = vDao.obtenerId(PGPDataSource.getConexionBD());
        String fecha = req.getParameter("fecha");
        String precio = req.getParameter("precio");
        String cantidad = req.getParameter("cantidad");
        String marca = req.getParameter("marca");
        String descripcion = req.getParameter("descripcion");
        String asesor = req.getParameter("asesor");        
        
        Venta v = new Venta();
        v.setId(id);
        v.setFecha(fecha);
        v.setPrecio(precio);
        v.setCantidad(cantidad);
        v.setMarca(marca);
        v.setDescripcion(descripcion);
        v.setAsesor(asesor);                                  
        boolean insert = vDao.crearVenta(v, PGPDataSource.getConexionBD());

        Logger.getLogger(VentaControllers.class.getName()).log(Level.SEVERE, null, "Registrar + " + fecha + "-" + insert);
        
        if (insert)
            
            model.put("mensaje", "El registro fue creado satisfactoriamente!!!");
        else
            model.put("mensaje", "El registro NO fue creado, consulte con el administrador...");
        
        return "venta-crear";
    }     
    
@RequestMapping(method = RequestMethod.GET, value = "ventaConsulta.htm")
    public String processSubmit2(HttpServletRequest req, SessionStatus status,ModelMap model) 
    {      
        VentaDAO vDao = new VentaDAO();
            
        Logger.getLogger(VentaDAO.class.getName()).log(Level.INFO, "Ejecutando processSubmit3...");

        List<Venta> datos = vDao.consultarVenta(PGPDataSource.getConexionBD(), "", "");

        Logger.getLogger(VentaControllers.class.getName()).log(Level.SEVERE, null, "Consultar + " + "" + "-" + datos.size());
        
        model.put("listaVenta", datos);
        if (datos.size() > 0)
            model.put("mensaje", "La consulta se realizo satisfactoriamente!!! <br> Datos encontrados: " + datos.size());
        else
            model.put("mensaje", "La consulta NO tiene resultados...");
        
        Logger.getLogger(VentaControllers.class.getName()).log(Level.INFO, "Ejecutando processSubmit2...");
        return "venta-consulta";
    } 
    
@RequestMapping(method = RequestMethod.POST, value = "ventaConsultaForm.htm")
    public String processSubmit3(HttpServletRequest req, SessionStatus status,ModelMap model) 
    {

        VentaDAO vDao = new VentaDAO();
            
        Logger.getLogger(VentaDAO.class.getName()).log(Level.INFO, "Ejecutando processSubmit3...");

        int id = vDao.obtenerId(PGPDataSource.getConexionBD());
        String fecha = req.getParameter("fecha");
        String precio = req.getParameter("precio");
        
        Venta v = new Venta();
        v.setId(id);
        v.setFecha(fecha);
        v.setPrecio(precio);
            
        List<Venta> datos = vDao.consultarVenta(PGPDataSource.getConexionBD(), fecha, precio);

        Logger.getLogger(VentaControllers.class.getName()).log(Level.SEVERE, null, "Consultar + " + fecha + "-" + datos.size());
        
        model.put("listaVenta", datos);
        if (datos.size() > 0)
            model.put("mensaje", "La consulta se realizo satisfactoriamente!!! <br> Datos encontrados: " + datos.size());
        else
            model.put("mensaje", "La consulta NO tiene resultados...");
        
        return "venta-consulta";
    }     
    
@RequestMapping(method = RequestMethod.GET, value = "ventaEditar.htm")
    public String processSubmit4(HttpServletRequest req, SessionStatus status,ModelMap model) 
    {      
        Logger.getLogger(VentaControllers.class.getName()).log(Level.INFO, "Ejecutando processSubmit4...");
        return "venta-editar";
    } 
    
@RequestMapping(method = RequestMethod.POST, value = "ventaEditarForm1.htm")
    public String processSubmit5(HttpServletRequest req, SessionStatus status,ModelMap model) 
    {

        VentaDAO vDao = new VentaDAO();
            
        Logger.getLogger(VentaDAO.class.getName()).log(Level.INFO, "Ejecutando processSubmit5...");

        int id = vDao.obtenerId(PGPDataSource.getConexionBD());
        String fecha = req.getParameter("fecha");
        String precio = req.getParameter("precio");
        
        Venta v = new Venta();
        v.setId(id);
        v.setFecha(fecha);
        v.setPrecio(precio);
            
        List<Venta> datos = vDao.consultarVenta(PGPDataSource.getConexionBD(), fecha, precio);

        Logger.getLogger(VentaControllers.class.getName()).log(Level.SEVERE, null, "Consultar + " + fecha + "-" + datos.size());
        
        model.put("listaVenta", datos);
        
        
        return "venta-editar";
        
    }    
    
@RequestMapping(method = RequestMethod.POST, value = "ventaEditarForm2.htm")
    public String processSubmit6(HttpServletRequest req, SessionStatus status,ModelMap model) 
    {

        VentaDAO vDao = new VentaDAO();
            
        Logger.getLogger(VentaDAO.class.getName()).log(Level.INFO, "Ejecutando processSubmit6...");

        int id = Integer.parseInt(req.getParameter("id"));
        String fecha = req.getParameter("fecha");
        String precio = req.getParameter("precio");
        String cantidad = req.getParameter("cantidad");
        String marca = req.getParameter("marca");
        String descripcion = req.getParameter("descripcion");
        String asesor = req.getParameter("asesor");

        
        Logger.getLogger(VentaDAO.class.getName()).log(Level.INFO, "id_Venta: " + id);
        
        Venta v = new Venta();
        v.setId(id);
        v.setFecha(fecha);
        v.setPrecio(precio);
        v.setCantidad(cantidad);
        v.setMarca(marca);
        v.setDescripcion(descripcion);
        v.setAsesor(asesor);
            
        boolean res = vDao.editarVenta(v, PGPDataSource.getConexionBD());                         
        
        if (res)
            model.put("mensaje", "Se edito satisfactoriamente!!!");
        else
            model.put("mensaje", "NO se guardaron los cambios...");
        
        return "venta-editar";
        
    }    
}