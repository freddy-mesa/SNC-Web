<%@ page import="sncpucmm.Nodo" %>


<div class="form-group ${hasErrors(bean: nodoInstance, field: 'nombre', 'error')} required">
    <label for="nombre">
        <g:message code="nodo.nombre.label" default="Nombre" />
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="nombre" class="form-control" required="" value="${nodoInstance?.nombre}"/>

</div>


<div class="form-group ${hasErrors(bean: nodoInstance, field: 'activo', 'error')} required">
	<label for="activo">
		<g:message code="nodo.activo.label" default="Activo" />
		<span class="required-indicator">*</span>
	</label>
    <g:select name="activo" class="form-control" from="${["true", "false"]}"></g:select>
</div>


