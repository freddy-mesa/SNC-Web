package sncpucmm

import grails.converters.JSON
import grails.plugin.springsecurity.annotation.Secured
import org.codehaus.groovy.grails.web.json.JSONArray
import org.codehaus.groovy.grails.web.json.JSONObject

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Secured("ROLE_ADMIN")
@Transactional(readOnly = true)
class NodoController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index() {
        respond Nodo.list(params), model: [nodoInstanceCount: Nodo.count()]
    }

    def show(Nodo nodoInstance) {
        respond nodoInstance
    }

    def create() {
        respond new Nodo(params)
    }

    @Transactional
    def save(Nodo nodoInstance) {
        if (nodoInstance == null) {
            notFound()
            return
        }

        if (nodoInstance.hasErrors()) {
            respond nodoInstance.errors, view: 'create'
            return
        }

        nodoInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'nodo.label', default: 'Nodo'), nodoInstance.id])
                redirect nodoInstance
            }
            '*' { respond nodoInstance, [status: CREATED] }
        }
    }

    def edit(Nodo nodoInstance) {
        respond nodoInstance
    }

    @Transactional
    def update(Nodo nodoInstance) {
        if (nodoInstance == null) {
            notFound()
            return
        }

        if (nodoInstance.hasErrors()) {
            respond nodoInstance.errors, view: 'edit'
            return
        }

        nodoInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Nodo.label', default: 'Nodo'), nodoInstance.id])
                redirect nodoInstance
            }
            '*' { respond nodoInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Nodo nodoInstance) {

        if (nodoInstance == null) {
            notFound()
            return
        }

        nodoInstance.delete flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Nodo.label', default: 'Nodo'), nodoInstance.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'nodo.label', default: 'Nodo'), params.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }

    def actualizar (){
        def nodos = Nodo.list()
        def ubicaciones = Ubicacion.list()
        def coordenadaNodo = CoordenadaNodo.list()
        def neighbor = Neighbor.list()

        JSONObject jsonObject = new JSONObject()
        JSONArray ubicacionArray = new JSONArray()
        JSONArray nodoArray = new JSONArray()
        JSONArray coordenadaArray = new JSONArray()
        JSONArray neighbornArray = new JSONArray()

        ubicaciones.each {
            JSONObject json = new JSONObject()
            json.put("id", it.id.toString())
            json.put("cantidadDePlantas", it.cantidadDePlantas)
            json.put("nombre", it.nombre)
            json.put("abreviacion", it.abreviacion)
            ubicacionArray.add(json)
        }
        nodos.each {
            JSONObject json = new JSONObject()
            json.put("id", it.id)
            json.put("nombre", it.nombre)
            json.put("activo", it.activo)
            json.put("edificio", it.edificio)
            if(it.ubicacion)
                json.put("ubicacion", it.ubicacion.id)
            else
                json.put("ubicacion", null)
            nodoArray.add(json)
        }
        coordenadaNodo.each {
            JSONObject json = new JSONObject()
            json.put("id", it.id)
            json.put("nodo", it.nodo.id)
            json.put("latitud", it.latitud)
            json.put("longitud", it.longitud)
            coordenadaArray.add(json)
        }
        neighbor.each {
            JSONObject json = new JSONObject()
            json.put("id", it.id)
            json.put("idNodo", it.nodo.id)
            json.put("nombreNodo", it.nodo.id)
            json.put("idNeighbor", it.neighbor.id)
            json.put("nombreNeighbor", it.neighbor.nombre)
            neighbornArray.add(json)
        }

        jsonObject.put("Ubicacion", ubicacionArray)
        jsonObject.put("Nodo", nodoArray)
        jsonObject.put("CoordenadaNodo", coordenadaArray)
        jsonObject.put("Neighbor", neighbornArray)

        render jsonObject as JSON
    }
}
