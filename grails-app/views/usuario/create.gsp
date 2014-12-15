<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="sbadmin">
		<g:set var="entityName" value="${message(code: 'usuario.label', default: 'Usuario')}" />
		<title><g:message code="default.create.label" args="[entityName]" /></title>
	</head>
	<body>
    <div class="row">
        <div class="col-lg-12">
            <h1 class="page-header">Usuarios <small>Crear</small></h1>
        </div>
    </div>
    <div class="row col-lg-3"></div>
		<div class="row col-lg-6">
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${usuarioInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${usuarioInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
            <div class="panel panel-primary">
                <div class="panel-heading">
                    Datos
                </div>
                <div class="panel-body">
			<g:form url="[resource:usuarioInstance, action:'save']" >
				<fieldset class="form">
					<g:render template="form"/>
				</fieldset>
				<fieldset class="buttons">
					<g:submitButton class="btn btn-primary" name="create" value="Crear" />
				</fieldset>
			</g:form>
                    </div>
                </div>
		</div>
	</body>
</html>
