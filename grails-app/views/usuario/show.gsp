
<%@ page import="sncpucmm.Usuario" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="sbadmin">
		<g:set var="entityName" value="${message(code: 'usuario.label', default: 'Usuario')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>

        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">Usuarios <small>${usuarioInstance.username}</small></h1>
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
			
				<g:if test="${usuarioInstance?.username}">
                    <div class="col-lg-3"></div>
				<div class="form-group">
					<label id="username-label"class="col-lg-4"><g:message code="usuario.username.label" default="Username" /></label>
					
						<span class="property-value" aria-labelledby="username-label"><g:fieldValue bean="${usuarioInstance}" field="username"/></span>
					
				</div>
				</g:if>

				<g:if test="${usuarioInstance?.enabled}">
                    <div class="col-lg-3"></div>
				<div class="form-group">
					<label id="enabled-label" class="col-lg-4"><g:message code="usuario.enabled.label" default="Habilidato" /></label>
					
						<span class="property-value" aria-labelledby="enabled-label"><g:formatBoolean boolean="${usuarioInstance?.enabled}" /></span>
					
				</div>
				</g:if>

			
			</div>
                    <div class="col-lg-4"></div>
			<g:form class="form-group" url="[resource:usuarioInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="btn btn-primary" action="edit" resource="${usuarioInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="btn btn-danger" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
                    </div>
		</div>
            </div>
	</body>
</html>
