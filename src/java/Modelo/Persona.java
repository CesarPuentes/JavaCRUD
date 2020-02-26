
package Modelo;

public class Persona {
    
    int id;
    String nombre;
    String apellido;
    String tipoDocumento;
    String documento;
    String fechaNacimiento;
    String fechaVinculacion;
    String cargo;
    Double salario;
    

    public Persona() {
    }

    public Persona(String nombre,String apellido,String tipoDocumento,String documento,String fechaNacimiento,String fechaVinculacion,String cargo,Double salario) 
    {
        this.nombre = nombre;
        this.apellido = apellido;
        this.tipoDocumento = tipoDocumento;
        this.documento = documento;
        this.fechaNacimiento = fechaNacimiento;
        this.fechaVinculacion = fechaVinculacion;
        this.cargo = cargo;
        this.salario = salario;
 
    }
// #############
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }
// #############
    public String getNombre() {
        return nombre;
    }
    
    public void setNombre(String nombre) {
        this.nombre = nombre;
    }
// #############
    public String getApellido() {
        return apellido;
    }
    
    public void setApellido(String apellido) {
        this.apellido = apellido;
    }
// #############
    public String getTipoDoc() {
        return tipoDocumento;
    }
    
    public void setTipoDoc(String tipoDocumento) {
        this.tipoDocumento = tipoDocumento;
    }
 // #############
    public String getDoc() {
        return documento;
    }
    
    public void setDoc(String documento) {
        this.documento = documento;
    }
// #############
    public String getfechaNac() {
        return fechaNacimiento;
    }
    
    public void setfechaNac(String fechaNacimiento) {
        this.fechaNacimiento = fechaNacimiento;
    }
 // #############
    public String getFechaVinc() {
        return fechaVinculacion;
    }
    
    public void setFechaVinc(String fechaVinculacion) {
        this.fechaVinculacion = fechaVinculacion;
    }    
 // #############
    public String getCargo() {
        return cargo;
    }
    
    public void setCargo(String cargo) {
        this.cargo = cargo;
    }
// #############
    public Double getSalario() {
        return salario;
    }
    
    public void setSalario(double salario) {
        this.salario = salario;
    }
}
