
<%@ page import="sncpucmm.Nodo" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="sbadmin">
		<g:set var="entityName" value="${message(code: 'nodo.label', default: 'Nodo')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">Nodos</h1>
            </div>
            <!-- /.col-lg-12 -->
        </div>

			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
            <div class="panel panel-primary">
                <div class="panel-heading">
                    Lista de Nodos
                </div>
                <div class="panel-body">
                    <div class="table-responsive">
                        <table class="table table-striped table-hover" id="nodos">
			<thead>
					<tr>
						<td>Nombre </td>
                        <g:sortableColumn property="activo" title="${message(code: 'nodo.activo.label', default: 'Activo')}" />
					</tr>
				</thead>
				<tbody>
				<g:each in="${nodoInstanceList}" status="i" var="nodoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
                        <td><g:link action="show" id="${nodoInstance.id}"> ${fieldValue(bean: nodoInstance, field: "nombre")}</g:link></td>

                        <g:if test="${nodoInstance.activo}">
                            <td>Si</td>
                        </g:if>
                        <g:else>
                            <td>No</td>
                        </g:else>

					</tr>
				</g:each>
				</tbody>
			</table>
		</div>
                    </div>
                </div>
    <script>
        $(document).ready(function() {
            $('#nodos').dataTable();
        });
    </script>
	</body>
</html>
