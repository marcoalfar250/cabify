<%-- 
    Document   : UsuarioMante
    Created on : 02/11/2017, 02:53:21 PM
    Author     : Marco Andres
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<% 
    HttpSession sesion = request.getSession(true);
    String nombre = "";
    if(sesion!=null){
    if(sesion.getAttribute("usuario") == null){
    response.sendRedirect("Principal.jsp");
    }
    else
    {
       
        nombre = (String) sesion.getAttribute("Nombre");
    }
    
    }
    else{
            response.sendRedirect("Principal.jsp");
        }
    
%>
<html>
    <head>
        <title>Mantenimiento de Usuarios</title>
        <%@ include file="Imports.jspf" %>
        <script src="js/ConductorJS.js" type="text/javascript"></script>
    </head>
    <body>

        <!-- ********************************************************** -->
        <!-- ********************************************************** -->
        <!-- Modal del BootsTrap para mostrar mensajes                  -->
        <!-- ********************************************************** -->
        <!-- ********************************************************** -->
        <div class="modal fade" id="myModal" role="dialog">
            <div class="modal-dialog modal-sm">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title" id="myModalTitle">Modal Header</h4>
                    </div>
                    <div class="modal-body" id="myModalMessage">
                        <p>This is a small modal.</p>
                    </div>
                </div>
            </div>
        </div>
        <!-- ********************************************************** -->
        <!-- Modal del BootsTrap formulario del ingreso de conductores                  -->

        <div class="modal fade" id="myModalConductor" role="dialog">
            <div class="modal-dialog modal-lg">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title" id="myModalTitle">Insertar / Modificar Conductores
                    </div>
                    <div class="modal-body" id="myModalMessage">
                        <form role="form" onsubmit="return false;" id="formConductores">
                            <div class="form-group" id="groupCedula">
                                <label for="cedula">Cédula:</label>
                                <input type="text" class="form-control" id="cedula" autofocus="true" placeholder="Cedula">
                            </div>

                            <div class="form-group" id="groupNombre">
                                <label for="nombre">Nombre:</label>
                                <input type="text" class="form-control" id="nombre" placeholder="Nombre" >
                            </div>

                            <div class="form-group" id="groupApellidos">
                                <label for="apellidos">Apellidos:</label>
                                <input type="text" class="form-control" id="apellidos" placeholder="Apellidos">
                            </div>

                            <div class="form-group" id="groupPassWord">
                                <label for="password">Contraseña:</label>
                                <input type="password" class="form-control" id="password" placeholder="Contraseña">
                            </div>
                            
                            <div class="form-group" id="groupTipoLic">
                                <label for="Telefono">Tipo de Licencia:</label>
                                <div class="selectContainer form-control">
                                    <select id="comboTiposLic" class="form-control" name="tipos">
                                        <option value="">Escoja una opción</option>
                                        <option value="A1">A1</option>
                                        <option value="A2">A2</option>
                                        <option value="A3">A3</option>
                                        <option value="B1">B1</option>
                                        <option value="B2">B2</option>
                                        <option value="B3">B3</option>
                                        <option value="B4">B4</option>
                                    </select>
                                </div>
                            </div>

                            <div class="form-group" id="groupFechaNacimiento">
                                <label for="dpFechaNacimiento">Fecha Nacimiento:</label>
                                <div id="dpFechaNacimiento" class="input-group date form_date" data-date="" data-date-format="dd/mm/yyyy" data-link-field="dtp_input2" data-link-format="dd/mm/yyyy">
                                    <input class="form-control" type="text" value="" readonly placeholder="dd/mm/aaaa" id="FechaNacimientoText">
                                    <span class="input-group-addon">
                                        <span class="glyphicon glyphicon-calendar"></span>
                                    </span>
                                </div>
                            </div>
                            
                            <div class="form-group" id="groupFechaVencimiento">
                                <label for="dpFechaVencimiento">Fecha Vencimiento licencia:</label>
                                <div id="dpFechaVencimiento" class="input-group date form_date" data-date="" data-date-format="dd/mm/yyyy" data-link-field="dtp_input2" data-link-format="dd/mm/yyyy">
                                    <input class="form-control" type="text" value="" readonly placeholder="dd/mm/aaaa" id="FechaVencimientoText">
                                    <span class="input-group-addon">
                                        <span class="glyphicon glyphicon-calendar"></span>
                                    </span>
                                </div>
                            </div>

                            <div class="form-group" id="groupTipoCon">
                                <label for="Telefono">Tipo Concuctor</label>
                                <div class="selectContainer form-control">
                                    <select id="comboConduc" class="form-control" name="tipos">
                                        <option value="">Escoja una opción</option>
                                        <option value="admin">Administrador</option>
                                        <option value="normal">Usuario Normal</option>
                                    </select>
                                </div>
                            </div>

                            <div class="form-group">
                                <input type="hidden" value="agregarConductor" id="ConductoresAction"/>
                                <button type="submit" class="btn btn-primary" id="enviar">Guardar</button>
                                <button type="reset" class="btn btn-danger" id="cancelar">Cancelar</button>
                            </div>

                            <div class="form-group height25" >
                                <div class="alert alert-success hiddenDiv" id="mesajeResult">
                                    <strong id="mesajeResultNeg">Info!</strong> 
                                    <span id="mesajeResultText">This alert box could indicate a neutral informative change or action.</span>
                                </div>
                            </div>

                        </form>
                    </div>
                </div>
            </div>
        </div>

        <!-- ********************************************************** -->
        <div id="myDiv">
            <!--HEADER-->
            <div class="header">
                <div class="bg-color">
                    <header id="main-header">
                        <nav class="navbar navbar-default navbar-fixed-top">
                            <div class="container">
                                <div class="navbar-header">
                                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                                        <span class="icon-bar"></span>
                                        <span class="icon-bar"></span>
                                        <span class="icon-bar"></span>
                                    </button>
                                    <a class="navbar-brand" href="#">Man<span class="logo-dec">tenimientos</span></a>
                                </div>
                                <div class="collapse navbar-collapse" id="myNavbar">

                                    <ul class="nav navbar-nav navbar-right">
                                        <li class=""><a href="Principal.jsp">Inicio</a></li>
                                        <li class=""><a href="#UsuarioMante.jsp">Usuarios</a></li>
                                        <li class=""><a href="VehiculosMante.jsp">Vehiculos</a></li>
                                        <li class="active"><a href="ConducorMante.jsp">Conductores</a></li>
                                    </ul>

                                </div>
                            </div>
                        </nav>
                    </header>
                    <div class="wrapper">
                        <div class="container">
                            <div class="row">
                                <div class="banner-info text-center wow fadeIn delay-05s">
                                    <h1 class="bnr-title">Bienvenido Administardor</h1>
                                    <h2 class="bnr-sub-title"><%out.print(sesion.getAttribute("Nombre"));%></h2>
                                    <p class="bnr-para">Ingresaste a la zona de mantenimientos de <span class="logo-dec">Cabify</span><br>Seleciona un elemento <br>para modificar o editar</p>
                                    <div class="overlay-detail">
                                        <a href="#feature"><i class="fa fa-angle-down"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!--/ HEADER-->
            <!---->

            <section id="ManVeiculo" class="section-padding wow fadeInUp delay-05s">
                <div class="container">
                    <div class="row">
                        <div class="container">
                            <div class="page-header">
                                <h1><small><span class="logo-dec"></span>Sistema para la administración</small></h1>
                            </div>
                            <div class="panel panel-default">
                                <div class="panel-body">
                                    <div class="row">
                                        <!-- ********************************************************** -->
                                        <!-- COLUMNA DEL MENU -->
                                        <!-- ********************************************************** -->
                                        <div class="col-md-4">
                                            <div class="dropdown">
                                                <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">Mantenimientos
                                                    <span class="caret"></span></button>
                                                <ul class="dropdown-menu">
                                                    <li><a href="#">Mantenimiento Usuarios</a></li>
                                                    <li><a href="#">Mantenimiento Vehiculos</a></li>
                                                    <li><a href="#">Mantenimiento Conductores</a></li>
                                                    <li class="divider"></li>
                                                    <li><a href="Principal.jsp">Cerrar Sesión</a></li>
                                                </ul>
                                            </div>
                                        </div>
                                        <!-- ********************************************************** -->
                                        <!-- COLUMNA DEL MENU -->
                                        <!-- ********************************************************** -->

                                        <!-- ********************************************************** -->
                                        <!-- COLUMNA DEL BOTON DE CERRAR SESION -->
                                        <!-- ********************************************************** -->
                                        <div class="col-md-4" style="text-align: right;">
                                            <a class="btn btn-warning" href="Principal.jsp" role="button">
                                                <span class="glyphicon glyphicon-log-out" aria-hidden="true"></span>
                                                Cerrar Sesión
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="panel panel-primary">
                                <div class="panel-heading"><h3>Mantenimiento de Conductores</h3></div>
                                <div class="panel-body">
                                    <center>
                                        <button type="button" class="btn btn-primary centered" data-toggle="modal" data-target="#myModalConductor" id="btMostarFormConductor">Insertar Conductor</button>
                                    </center><br>
                                    <!-- ********************************************************** -->
                                    <div class="col-sm-12">
                                        <form role="form" onsubmit="return false;" id="formConductor" class="form-horizontal centered">
                                            <div class="form-group" id="groupFiltroConductor">
                                                <div class="col-sm-4" style="text-align: right; vertical-align: middle;">
                                                    <p><b>Buscar por id de conductor</b></p>
                                                </div>
                                                <div class="col-sm-4">
                                                    <input type="text" class="form-control" id="FiltroConductor" placeholder="Digite el id del conductor">
                                                </div>
                                                <div class="col-sm-4">
                                                    <button type="button" class="btn btn-info centered" data-toggle="modal" data-target="" id="btBuscarConductor">
                                                        Buscar <span class="glyphicon glyphicon-search"></span>
                                                    </button>
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                    <!-- ********************************************************** -->

                                    <table class="table table-hover table-condensed" id="tablaConductor"></table>

                                </div>
                                <div class="panel-footer">Nota: Acciones validas dependeran del rol del usuario</div>
                            </div>
                        </div> 
                    </div>
                </div>
            </section>
        </div>
    </body>
</html>
