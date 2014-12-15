
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
		<div id="show-nodo" class="content scaffold-show" role="main">
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list nodo">

                <g:if test="${nodoInstance?.nombre}">
                    <li class="fieldcontain">
                        <span id="nombre-label" class="property-label"><g:message code="nodo.nombre.label" default="Nombre" /></span>

                        <span class="property-value" aria-labelledby="nombre-label"><g:fieldValue bean="${nodoInstance}" field="nombre"/></span>

                    </li>
                </g:if>

				<li class="fieldcontain">
					<span id="activo-label" class="property-label"><g:message code="nodo.activo.label" default="Activo" /></span>


                    <g:if test="${nodoInstance.activo}">
                        <span class="property-value" aria-labelledby="activo-label">Si</span>
                    </g:if>
                    <g:else>
                        <span class="property-value" aria-labelledby="activo-label">No</span>
                    </g:else>

				</li>

			</ol>
            <g:link class="btn btn-primary" action="edit" resource="${nodoInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
		</div>
	</body>
</html>
