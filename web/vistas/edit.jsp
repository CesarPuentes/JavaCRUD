
<%@page import="Modelo.Persona"%>
<%@page import="ModeloDAO.PersonaDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
    </head>
    <body>
        <div class="container">
            <div class="col-lg-6">
              <%
              PersonaDAO dao=new PersonaDAO();
              int id=Integer.parseInt((String)request.getAttribute("idper"));
              Persona p=(Persona)dao.list(id);
          %>
            <h1>Modificar Persona</h1>
            <form action="Controlador">
                Nombres:<br>
                <input class="form-control" type="text" name="txtNombre" value="<%= p.getNombre()%>"><br>
                Apellidos: <br>
                <input class="form-control" type="text" name="txtApellido" value="<%= p.getApellido()%>"><br>
                Tipo_Documento:<br>
                <input class="form-control" type="text" name="txtTipoDocumento" value="<%= p.getTipoDoc()%>"><br>
                Documento: <br>
                <input class="form-control" type="text" name="txtDocumento" value="<%= p.getDoc()%>"><br>
                Fecha_Nacimiento:<br>
                <input class="form-control" type="text" name="txtFechaNacimiento" value="<%= p.getfechaNac()%>"><br>
                Fecha_Vinculacion: <br>
                <input class="form-control" type="text" name="txtFechaVinculacion" value="<%= p.getFechaVinc()%>"><br>
                Cargo:<br>
                <input class="form-control" type="text" name="txtCargo" value="<%= p.getCargo()%>"><br>
                Salario: <br>
                <input class="form-control" type="text" name="txtSalario" value="<%= p.getSalario()%>"><br>
                
                <input type="hidden" name="txtid" value="<%= p.getId()%>">
                <input class="btn btn-primary" type="submit" name="accion" value="Actualizar"> 
                <a href="Controlador?accion=listar">Regresar</a>
            </form>
          </div>
          
        </div>
    </body>
</html>
