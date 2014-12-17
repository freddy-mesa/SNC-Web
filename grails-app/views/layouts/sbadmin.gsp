<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>SNC PUCMM Web</title>

    <!-- Bootstrap Core CSS -->
    <asset:stylesheet src="bootstrap.min.css"></asset:stylesheet>

    <!-- MetisMenu CSS -->
    <asset:stylesheet src="plugins/metisMenu/metisMenu.min.css"></asset:stylesheet>

    <!-- Custom CSS -->
    <asset:stylesheet src="sb-admin-2.css"></asset:stylesheet>


    <asset:stylesheet src="plugins/morris.css"></asset:stylesheet>

    <!-- Custom Fonts -->
    <asset:stylesheet src="font-awesome-4.1.0/css/font-awesome.min.css"></asset:stylesheet>

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body>

    <div id="wrapper">

        <!-- Navigation -->
        <nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <g:link class="navbar-brand" controller="dashboard" action="index">SNC PUCMM - Web</g:link>
            </div>
            <!-- /.navbar-header -->

            <ul class="nav navbar-top-links navbar-right">
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        <i class="fa fa-user fa-fw"></i> ${session.SPRING_SECURITY_CONTEXT?.authentication?.principal?.username} <i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-user">
                        <li><g:link controller="usuario" action="show" id="${session.SPRING_SECURITY_CONTEXT?.authentication?.principal?.id}"><i class="fa fa-fw fa-user"></i> Perfil</g:link>
                        </li>
                        <li class="divider"></li>
                        <li><g:link controller="logout" action="index"><i class="fa fa-fw fa-power-off"></i> Logout</g:link>
                        </li>
                    </ul>
                    <!-- /.dropdown-user -->
                </li>
                <!-- /.dropdown -->
            </ul>
            <!-- /.navbar-top-links -->

            <div class="navbar-default sidebar" role="navigation">
                <div class="sidebar-nav navbar-collapse">
                    <ul class="nav" id="side-menu">
                        <li class="sidebar-search">
                            <div class="input-group custom-search-form">
                                <input type="text" class="form-control" placeholder="Search...">
                                <span class="input-group-btn">
                                <button class="btn btn-default" type="button">
                                    <i class="fa fa-search"></i>
                                </button>
                            </span>
                            </div>
                            <!-- /input-group -->
                        </li>
                        <li>
                            <g:link controller="dashboard" action="index"><i class="fa fa-dashboard fa-fw"></i> Dashboard</g:link>
                        </li>
                        <li>
                            <g:link controller="usuario" action="index"><i class="fa fa-users fa-fw"></i> Usuarios<span class="fa arrow"></span></g:link>
                            <ul class="nav nav-second-level">
                                <li><g:link controller="usuario" action="index">Index</g:link></li>
                                <li><g:link controller="usuario" action="create">Crear</g:link></li>
                            </ul>
                        </li>
                        <li>
                            <g:link controller="tour" action="index"><i class="fa fa-map-marker fa-fw"></i> Tours<span class="fa arrow"></span></g:link>
                            <ul class="nav nav-second-level">
                                <li><g:link controller="tour" action="index">Index</g:link></li>
                                <li><g:link controller="tour" action="create">Crear</g:link></li>
                            </ul>
                        </li>
                        <li>
                            <g:link controller="nodo" action="index"><i class="fa fa-circle fa-fw"></i> Nodos</g:link>
                        </li>
                    </ul>
                </div>
                <!-- /.sidebar-collapse -->
            </div>
            <!-- /.navbar-static-side -->
        </nav>

        <!-- Page Content -->
        <div id="page-wrapper">
        <!-- jQuery Version 1.11.0 -->
            <asset:javascript src="jquery-1.11.0.js"></asset:javascript>

            <asset:javascript src="plugins/dataTables/jquery.dataTables.js"></asset:javascript>

            <!-- Bootstrap Core JavaScript -->
            <asset:javascript src="bootstrap.min.js"></asset:javascript>

            <!-- Metis Menu Plugin JavaScript -->
            <asset:javascript src="plugins/metisMenu/metisMenu.min.js"></asset:javascript>

            <!-- Custom Theme JavaScript -->
            <asset:javascript src="sb-admin-2.js"></asset:javascript>

            <asset:javascript src="plugins/dataTables/dataTables.bootstrap.js"></asset:javascript>

            <g:layoutBody/>

        </div>
        <!-- /#page-wrapper -->

    </div>
    <!-- /#wrapper -->
</body>

</html>

