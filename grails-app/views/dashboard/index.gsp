<%--
  Created by IntelliJ IDEA.
  User: Yandri
  Date: 17/12/2014
  Time: 0:54
--%>

<%@ page import="grails.converters.JSON; javax.swing.text.html.HTML; sncpucmm.Tour" defaultCodec="none" contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta name="layout" content="sbadmin">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>SNC PUCMM - Dashboard</title>
</head>

<body>
<div class="row">
    <div class="col-lg-12">
        <h1 class="page-header">Dashboard</h1>
    </div>
    <!-- /.col-lg-12 -->
</div>
<!-- /.row -->
<div class="row">
    <div class="col-lg-3 col-md-6">
        <div class="panel panel-primary">
            <div class="panel-heading">
                <div class="row">
                    <div class="col-xs-3">
                        <i class="fa fa-map-marker fa-5x"></i>
                    </div>
                    <div class="col-xs-9 text-right">
                        <div class="huge">${tours.size()}</div>
                        <div>Cantidad de Tours</div>
                    </div>
                </div>
            </div>
            <a href="#">
                <div class="panel-footer">
                    <div class="clearfix"></div>
                </div>
            </a>
        </div>
    </div>
    <div class="col-lg-3 col-md-6">
        <div class="panel panel-green">
            <div class="panel-heading">
                <div class="row">
                    <div class="col-xs-3">
                        <i class="fa fa-check fa-5x"></i>
                    </div>
                    <div class="col-xs-9 text-right">
                        <div class="huge">${recorridos}</div>
                        <div>Tours Recorridos</div>
                    </div>
                </div>
            </div>
            <a href="#">
                <div class="panel-footer">
                    <div class="clearfix"></div>
                </div>
            </a>
        </div>
    </div>
    <div class="col-lg-3 col-md-6">
        <div class="panel panel-yellow">
            <div class="panel-heading">
                <div class="row">
                    <div class="col-xs-3">
                        <i class="fa fa-circle-o-notch fa-5x"></i>
                    </div>
                    <div class="col-xs-9 text-right">
                        <div class="huge">${inconclusos}</div>
                        <div>Tours Inconclusos</div>
                    </div>
                </div>
            </div>
            <a href="#">
                <div class="panel-footer">
                    <div class="clearfix"></div>
                </div>
            </a>
        </div>
    </div>
    <div class="col-lg-3 col-md-6">
        <div class="panel panel-red">
            <div class="panel-heading">
                <div class="row">
                    <div class="col-xs-3">
                        <i class="fa fa-check-circle-o fa-5x"></i>
                    </div>
                    <div class="col-xs-9 text-right">
                        <div class="huge">${finalizados}</div>
                        <div>Tours Finalizados</div>
                    </div>
                </div>
            </div>
            <a href="#">
                <div class="panel-footer">
                    <div class="clearfix"></div>
                </div>
            </a>
        </div>
    </div>
</div>
<!-- /.row -->
<div class="row">
<div class="col-lg-8">
<div class="panel panel-default">
    <div class="panel-heading">
        <i class="fa fa-bar-chart-o fa-fw"></i> Bar Chart
    </div>
    <!-- /.panel-heading -->
    <div class="panel-body">
        <div id="tours-chart"></div>
    </div>
    <!-- /.panel-body -->
</div>
</div>
<!-- /.col-lg-8 -->
<div class="col-lg-4">

    <!-- /.panel -->
    <div class="panel panel-default">
        <div class="panel-heading">
            <i class="fa fa-bar-chart-o fa-fw"></i> Donut Chart
        </div>
        <div class="panel-body">
            <div id="donut-chart"></div>
        </div>
        <!-- /.panel-body -->
    </div>
    <!-- /.panel -->

</div>
</div>
<!-- Metis Menu Plugin JavaScript -->
<asset:javascript src="plugins/metisMenu/metisMenu.min.js"></asset:javascript>
<!-- Morris Charts JavaScript -->
<asset:javascript src="plugins/morris/raphael.min.js"></asset:javascript>
<asset:javascript src="plugins/morris/morris.min.js"></asset:javascript>
<asset:javascript src="plugins/morris/morris-data.js"></asset:javascript>

<script>
    Morris.Donut({
        element: 'donut-chart',
        data: [{
            label: "Inconclusos",
            value: ${inconclusos}
        }, {
            label: "Recorridos",
            value: ${recorridos}
        },{
            label: "Finalizados",
            value: ${finalizados}
        }

        ],
        colors: ['#2b5797', '#2d89ef']
    });

    Morris.Bar(${raw(tour_chart as JSON)});

</script>

</body>

</html>
