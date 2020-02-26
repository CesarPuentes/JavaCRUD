
package ModeloDAO;

import Config.Conexion;
import Intefaces.CRUD;
import Modelo.Persona;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class PersonaDAO implements CRUD{
    Conexion cn=new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    Persona p=new Persona();
    
    @Override
    public List listar() {
        ArrayList<Persona>list=new ArrayList<>();
        String sql="select * from persona";
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){
                Persona per=new Persona();
                per.setId(rs.getInt("Id"));
                per.setNombre(rs.getString("Nombre"));
                per.setApellido(rs.getString("Apellidos"));
                per.setTipoDoc(rs.getString("Tipo_Documento"));
                per.setDoc(rs.getString("Documento"));
                per.setfechaNac(rs.getString("Fecha_Nacimiento"));
                per.setFechaVinc(rs.getString("Fecha_Vinculacion"));
                per.setCargo(rs.getString("Cargo"));
                per.setSalario(rs.getDouble("Salario"));
                list.add(per);
    
            }
        } catch (Exception e) {
        }
        return list;
    }

    @Override
    public Persona list(int id) {
        String sql="select * from persona where Id="+id;
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){                
                p.setId(rs.getInt("Id"));
                p.setNombre(rs.getString("Nombre"));
                p.setApellido(rs.getString("Apellidos"));
                p.setTipoDoc(rs.getString("Tipo_Documento"));
                p.setDoc(rs.getString("Documento"));
                p.setfechaNac(rs.getString("Fecha_Nacimiento"));
                p.setFechaVinc(rs.getString("Fecha_Vinculacion"));
                p.setCargo(rs.getString("Cargo"));
                p.setSalario(rs.getDouble("Salario"));
       
                
            }
        } catch (Exception e) {
        }
        return p;
    }

    @Override
    public boolean add(Persona per) {
       String sql="insert into persona(Nombre, Apellidos,Tipo_Documento,Documento,Fecha_Nacimiento,Fecha_Vinculacion,Cargo)values('"+per.getNombre()+"','"+per.getApellido()+"','"+per.getTipoDoc()+"','"+per.getDoc()+"','"+per.getfechaNac()+"','"+per.getFechaVinc()+"','"+per.getCargo()+"')";

        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
       return false;
    }

    @Override
    public boolean edit(Persona per) {
        String sql="update persona set Nombre='"+per.getNombre()+"',Apellidos='"+per.getApellido()+"'where Id="+per.getId();
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return false;
    }

    @Override
    public boolean eliminar(int id) {
        String sql="delete from persona where Id="+id;
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return false;
    }
    
}
