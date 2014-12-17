<%@ page import="sncpucmm.Nodo" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="sbadmin">
		<g:set var="entityName" value="${message(code: 'nodo.label', default: 'Nodo')}" />
		<title><g:message code="default.edit.label" args="[entityName]" /></title>
	</head>
	<body>

    <div class="row">
        <div class="col-lg-12">
            <h1 class="page-header">Nodos <small>Editar</small></h1>
        </div>
    </div>
    <div class="row col-lg-3"></div>
    <div class="row col-lg-6">
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${nodoInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${nodoInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
        <div class="panel panel-primary">
            <div class="panel-heading">
                Datos
            </div>
            <div class="panel-body">
			<g:form url="[resource:nodoInstance, action:'update']" method="PUT" >
				<g:hiddenField name="version" value="${nodoInstance?.version}" />
				<fieldset class="form">
					<g:render template="form"/>
				</fieldset>
				<fieldset class="buttons">
                    <div class="col-lg-4"></div>
					<g:actionSubmit class="btn btn-primary" action="update" value="Actualizar" />
				</fieldset>
			</g:form>
		</div>
            </div>
        </div>
	</body>
</html>
