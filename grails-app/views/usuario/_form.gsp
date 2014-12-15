<%@ page import="sncpucmm.UsuarioTipoUsuario; sncpucmm.Usuario" %>

<div class="form-group ${hasErrors(bean: usuarioInstance, field: 'username', 'error')} required">
    <label for="username">
        <label>Username</label>
        <span class="required-indicator">*</span>
    </label>
    <g:textField class="form-control" name="username" required="" value="${usuarioInstance?.username}"/>

</div>

<div class="form-group ${hasErrors(bean: usuarioInstance, field: 'password', 'error')} required">
    <label for="password">
        <label>Password</label>
        <span class="required-indicator">*</span>
    </label>
    <g:textField class="form-control" name="password" required="" value="${usuarioInstance?.password}"/>

</div>
