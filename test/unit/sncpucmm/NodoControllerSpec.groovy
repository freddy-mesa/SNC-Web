package sncpucmm


import grails.test.mixin.*
import spock.lang.*

@TestFor(NodoController)
@Mock(Nodo)
class NodoControllerSpec extends Specification {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void "Test the index action returns the correct model"() {

        when: "The index action is executed"
        controller.index()

        then: "The model is correct"
        !model.nodoInstanceList
        model.nodoInstanceCount == 0
    }

    void "Test the create action returns the correct model"() {
        when: "The create action is executed"
        controller.create()

        then: "The model is correctly created"
        model.nodoInstance != null
    }

    void "Test the save action correctly persists an instance"() {

        when: "The save action is executed with an invalid instance"
        request.contentType = FORM_CONTENT_TYPE
        request.method = 'POST'
        def nodo = new Nodo()
        nodo.validate()
        controller.save(nodo)

        then: "The create view is rendered again with the correct model"
        model.nodoInstance != null
        view == 'create'

        when: "The save action is executed with a valid instance"
        response.reset()
        populateValidParams(params)
        nodo = new Nodo(params)

        controller.save(nodo)

        then: "A redirect is issued to the show action"
        response.redirectedUrl == '/nodo/show/1'
        controller.flash.message != null
        Nodo.count() == 1
    }

    void "Test that the show action returns the correct model"() {
        when: "The show action is executed with a null domain"
        controller.show(null)

        then: "A 404 error is returned"
        response.status == 404

        when: "A domain instance is passed to the show action"
        populateValidParams(params)
        def nodo = new Nodo(params)
        controller.show(nodo)

        then: "A model is populated containing the domain instance"
        model.nodoInstance == nodo
    }

    void "Test that the edit action returns the correct model"() {
        when: "The edit action is executed with a null domain"
        controller.edit(null)

        then: "A 404 error is returned"
        response.status == 404

        when: "A domain instance is passed to the edit action"
        populateValidParams(params)
        def nodo = new Nodo(params)
        controller.edit(nodo)

        then: "A model is populated containing the domain instance"
        model.nodoInstance == nodo
    }

    void "Test the update action performs an update on a valid domain instance"() {
        when: "Update is called for a domain instance that doesn't exist"
        request.contentType = FORM_CONTENT_TYPE
        request.method = 'PUT'
        controller.update(null)

        then: "A 404 error is returned"
        response.redirectedUrl == '/nodo/index'
        flash.message != null


        when: "An invalid domain instance is passed to the update action"
        response.reset()
        def nodo = new Nodo()
        nodo.validate()
        controller.update(nodo)

        then: "The edit view is rendered again with the invalid instance"
        view == 'edit'
        model.nodoInstance == nodo

        when: "A valid domain instance is passed to the update action"
        response.reset()
        populateValidParams(params)
        nodo = new Nodo(params).save(flush: true)
        controller.update(nodo)

        then: "A redirect is issues to the show action"
        response.redirectedUrl == "/nodo/show/$nodo.id"
        flash.message != null
    }

    void "Test that the delete action deletes an instance if it exists"() {
        when: "The delete action is called for a null instance"
        request.contentType = FORM_CONTENT_TYPE
        request.method = 'DELETE'
        controller.delete(null)

        then: "A 404 is returned"
        response.redirectedUrl == '/nodo/index'
        flash.message != null

        when: "A domain instance is created"
        response.reset()
        populateValidParams(params)
        def nodo = new Nodo(params).save(flush: true)

        then: "It exists"
        Nodo.count() == 1

        when: "The domain instance is passed to the delete action"
        controller.delete(nodo)

        then: "The instance is deleted"
        Nodo.count() == 0
        response.redirectedUrl == '/nodo/index'
        flash.message != null
    }
}
