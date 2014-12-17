
<%@ page import="sncpucmm.Nodo" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="sbadmin">
		<g:set var="entityName" value="${message(code: 'nodo.label', default: 'Nodo')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">Nodos <small>${nodoInstance.nombre}</small></h1>
            </div>
            <!-- /.col-lg-12 -->
        </div>
        <div class="row">
			<g:if test="${flash.message}">
                <div class="alert alert-success" role="status">${flash.message}</div>
            </g:if>
            <div class="col-lg-2"></div>
            <div class="  col-lg-6">
                <div class="panel panel-primary">
                    <div class="panel-heading">
                        Datos
                    </div>
                    <div class="panel-body">

                <g:if test="${nodoInstance?.nombre}">
                    <div class="col-lg-12">
                    <div class="col-lg-2"></div>
                        <label id="nombre-label" class="col-lg-4"><g:message code="nodo.nombre.label" default="Nombre" /></label>

                        <span class="property-value" aria-labelledby="nombre-label"><g:fieldValue bean="${nodoInstance}" field="nombre"/></span>
                    </div>

                </g:if>

                        <div class="col-lg-12">
                        <div class="col-lg-2"></div>
					<label id="activo-label" class="col-lg-4"><g:message code="nodo.activo.label" default="Activo" /></label>


                    <g:if test="${nodoInstance.activo}">
                        <span class="property-value" aria-labelledby="activo-label">Si</span>
                    </g:if>
                    <g:else>
                        <span class="property-value" aria-labelledby="activo-label">No</span>
                    </g:else>
                            </div>


			</div>
                    <div class="col-lg-5"></div>
                    <div class="form-group">
                        <g:link class="btn btn-primary" action="edit" resource="${nodoInstance}">Editar</g:link>
		            </div>
                </div>
                    </div>
                </div>
	</body>
</html>
