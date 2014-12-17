import grails.converters.JSON
import grails.util.Holders
import groovy.sql.Sql
import sncpucmm.TipoUsuario
import sncpucmm.Usuario
import sncpucmm.UsuarioTipoUsuario

class BootStrap {

    def init = { servletContext ->
        //Creando tipos de usuarios
        def tipoAdmin = new TipoUsuario(authority: "ROLE_ADMIN", description: "Administrador del sistema.").save(failOnError: true);
        def tipoUsuario = new TipoUsuario(authority: "ROLE_USUARIO", description: "Usuario del sistema.").save(failOnError: true);

        //Creando usuarios
        def admin = new Usuario(username: "admin", password: "admin", accountExpired: false, accountLocked: false, passwordExpired: false).save(failOnError: true);
        def usuario = new Usuario(username: "usuario", password: "usuario", accountExpired: false, accountLocked: false, passwordExpired: false).save(failOnError: true);

        //Asignando usuarios a su tipo.
        UsuarioTipoUsuario.create(admin, tipoAdmin, true);
        UsuarioTipoUsuario.create(usuario, tipoUsuario, true);

        /*String sqlFilePath = 'Scripts.sql'
        String sqlString = new File(sqlFilePath).text
        Sql sql = Sql.newInstance(Holders.config.dataSource.url, Holders.config.dataSource.username, Holders.config.dataSource.password, Holders.config.dataSource.driverClassName)
        sql.execute(sqlString)*/

    }
    def destroy = {
    }
}
