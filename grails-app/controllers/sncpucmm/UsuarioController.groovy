package sncpucmm

import com.google.gson.JsonArray
import grails.converters.JSON
import grails.plugin.springsecurity.annotation.Secured
import org.codehaus.groovy.grails.web.json.JSONArray
import org.codehaus.groovy.grails.web.json.JSONObject

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Secured("ROLE_ADMIN")
@Transactional(readOnly = true)
class UsuarioController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index() {
        respond Usuario.list(params), model:[usuarioInstanceCount: Usuario.count()]
    }

    def show(Usuario usuarioInstance) {
        respond usuarioInstance
    }

    def create() {
        respond new Usuario(params)
    }

    @Transactional
    def save(Usuario usuarioInstance) {
        if (usuarioInstance == null) {
            notFound()
            return
        }

        if (usuarioInstance.hasErrors()) {
            respond usuarioInstance.errors, view:'create'
            return
        }

        usuarioInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = "Se ha creado el usuario " + usuarioInstance.username + "."
                redirect usuarioInstance
            }
            '*' { respond usuarioInstance, [status: CREATED] }
        }
    }

    def edit(Usuario usuarioInstance) {
        respond usuarioInstance
    }

    @Transactional
    def update(Usuario usuarioInstance) {
        if (usuarioInstance == null) {
            notFound()
            return
        }

        if (usuarioInstance.hasErrors()) {
            respond usuarioInstance.errors, view:'edit'
            return
        }

        usuarioInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = "Se ha actualizado el usuario " + usuarioInstance.username + "."
                redirect usuarioInstance
            }
            '*'{ respond usuarioInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Usuario usuarioInstance) {

        if (usuarioInstance == null) {
            notFound()
            return
        }

        usuarioInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = "Se ha eliminado el usuario " + usuarioInstance.username + "."
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = "No se encuentra el usuario."
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }

    @Secured(['permitAll'])
    @Transactional
    def crear(){
        println "crear -> " + params.id
        def usuarioSearch = UsuarioFacebook.findByFacebookId(new Long(params.id))

        if(!usuarioSearch){
            new UsuarioFacebook(
                facebookId: new Long(params.id),
                firstname: params.fist_name,
                lastname: params.last_name,
                gender: params.gender,
                email: params.email
            ).save(flush: true, failOnError: true)
        }
    }

    //Recibe una petición de following
    @Secured(['permitAll'])
    @Transactional
    def followRequest(){
        println "followRequest -> " + params.json
        JSONObject request = new JSONObject(params.json)
        JSONArray users = new JSONArray(request.get("usuarios").toString())

        def usuario = UsuarioFacebook.findByFacebookId(new Long(request.getString("id")))

        users.each {
            //def followed = new UsuarioFacebook(facebookId: new Long(it)).save(flush: true, failOnError: true)
            def followed = UsuarioFacebook.findByFacebookId(new Long(it))
            new FollowUsuario(follower: usuario, followed: followed, estadoSolicitud: "pending", fechaRegistroSolicitud: new Date()).save(flush: true, failOnError: true)
        }
    }

    //Recibe la respuesta de solicitud de una petición de following.
    @Secured(['permitAll'])
    @Transactional
    def followResponse(){
        println "followResponse -> " + params.followed + " " + params.status + " " + params.follower
        def followUsuario = FollowUsuario.findByFollowerAndFollowed(UsuarioFacebook.findByFacebookId(new Long(params.follower)), UsuarioFacebook.findByFacebookId(new Long(params.followed)))
        //println followUsuario
        if(params.status == "denied"){
            followUsuario.delete(flush:true)
        }
        else if (params.status == "accepted"){
            followUsuario.estadoSolicitud = "accepted"
            followUsuario.save(flush: true)
        }
    }

    @Secured(['permitAll'])
    @Transactional
    def notifyFollowingRequest(){
        println "Send Notifications to " + params.id
        def list = FollowUsuario.findAllByFollowedAndEstadoSolicitud(UsuarioFacebook.findByFacebookId(new Long(params.id)), "pending")
        //println list
        JSONArray requests = new JSONArray()
        //println "Lista: "
        list.each {
            //println "Followed: " + it.followed.facebookId + " Follower: " + it.follower.facebookId
            JSONObject request = new JSONObject()
            request.put("id", it.follower.facebookId.toString())
            request.put("name", it.follower.firstname + " " + it.follower.lastname)
            requests.add(request)
        }
        render requests as JSON
    }

    //Usuarios a los que un usuario sigue.
    @Secured(['permitAll'])
    @Transactional
    def following(){
        println "Get following (Accept or Pending) friend: -> " + params.id
        def usuario = UsuarioFacebook.findByFacebookId(new Long(params.id))
        def followedAccepted = (Set<FollowUsuario>)FollowUsuario.findAllWhere(follower: usuario, estadoSolicitud:  "accepted")
        def followedPending = (Set<FollowUsuario>)FollowUsuario.findAllWhere(follower: usuario,estadoSolicitud:  "pending")
        def followerAccepted = (Set<FollowUsuario>)FollowUsuario.findAllWhere(followed: usuario, estadoSolicitud:  "accepted")
        def followerPending = (Set<FollowUsuario>)FollowUsuario.findAllWhere(followed: usuario,estadoSolicitud:  "pending")

        def following = followedAccepted + followedPending + followerAccepted + followerPending

        JSONArray list = new JSONArray()
        following.each {
            JSONObject user = new JSONObject()
            user.put("id", it.followed.facebookId.toString())
            list.add(user)
        }
        render list as JSON
    }

    @Secured(['permitAll'])
    @Transactional
    def friendFindRequest(){
        println "User id: " + params.id
        def usuario = UsuarioFacebook.findByFacebookId(new Long(params.id))
        JSONArray list = new JSONArray()

        def follower = FollowUsuario.findAllWhere(followed: usuario, estadoSolicitud: "accepted")
        follower.each {it ->
            def user = LocalizacionUsuario.findAllByUsuario(it.follower, [sort: 'fechaLocalizacion', order:'des']).first()
            JSONObject jsonObject = new JSONObject()

            jsonObject.put("id",user.usuario.facebookId.toString())
            jsonObject.put("nombre",user.usuario.firstname + " " + user.usuario.lastname)
            jsonObject.put("ubicacion",user.nodo.ubicacion.abreviacion)
            jsonObject.put("fecha",user.fechaLocalizacion)

            list.add(jsonObject)
        }

        def followed = FollowUsuario.findAllWhere(follower: usuario, estadoSolicitud: "accepted")
        followed.each {it ->
            def user = LocalizacionUsuario.findByUsuario(it.followed)
            JSONObject jsonObject = new JSONObject();

            jsonObject.put("id",user.usuario.facebookId.toString())
            jsonObject.put("nombre",user.usuario.firstname + " " + user.usuario.lastname)
            jsonObject.put("ubicacion",user.nodo.ubicacion.abreviacion)
            jsonObject.put("fecha",user.fechaLocalizacion)

            list.add(jsonObject)
        }

        println(list as JSON)

        render list as JSON
    }

    @Secured(['permitAll'])
    @Transactional
    def friendsShareLocationRequest(){
        println "Find Friend of " + params.id + " for Share Location"
        def usuario = UsuarioFacebook.findByFacebookId(new Long(params.id))
        JSONArray list = new JSONArray()

        def follower = FollowUsuario.findAllWhere(followed: usuario, estadoSolicitud: "accepted")
        follower.each {it ->
            JSONObject jsonObject = new JSONObject()
            jsonObject.put("id",it.follower.facebookId.toString())
            jsonObject.put("nombre",it.follower.firstname + " " + it.follower.lastname)

            list.add(jsonObject)
        }

        def followed = FollowUsuario.findAllWhere(follower: usuario, estadoSolicitud: "accepted")
        followed.each {it ->
            JSONObject jsonObject = new JSONObject();
            jsonObject.put("id",it.followed.facebookId.toString())
            jsonObject.put("nombre",it.followed.firstname + " " + it.followed.lastname)

            list.add(jsonObject)
        }

        render list as JSON
    }

    @Secured(['permitAll'])
    @Transactional
    def notifySharedLocationRequest() {
        def usuario = UsuarioFacebook.findByFacebookId(new Long(params.id))

        def list = CompartirUsuario.findAllByReceiverAndCompartido(usuario, false)
        JSONArray json = new JSONArray()

        list.each {
            it.compartido = true
            it.save(failOnError: true, flush: true)

            JSONObject jsonObject = new JSONObject()
            jsonObject.put("id", it.sender.facebookId.toString())
            jsonObject.put("nombre", it.sender.firstname + " " + it.sender.lastname)
            jsonObject.put("mensaje", it.compartirUbicacion.mensaje)
            jsonObject.put("nodo", it.compartirUbicacion.nodo.id)
            json.add(jsonObject)
        }

        render json as JSON
    }

    @Secured(['permitAll'])
    @Transactional
    def sharedLocationRequest() {
        def sender = UsuarioFacebook.findByFacebookId(new Long(params.id))

        JSONObject jsonObject = new JSONObject(params.json)
        JSONArray array = new JSONArray(jsonObject.getString("friends"))

        def mensaje = jsonObject.getString("message")
        def nodo = jsonObject.getInt("idNodo")

        array.each {
            def compartirUbicacion = new CompartirUbicacion(mensaje: mensaje, nodo: Nodo.findById(nodo)).save(flush: true, failOnError: true)

            def receiver = UsuarioFacebook.findByFacebookId(new Long(it.toString()))
            new CompartirUsuario(sender: sender, receiver: receiver, compartirUbicacion: compartirUbicacion).save(flush: true, failOnError: true)
        }
    }
}
