package sncpucmm

import grails.converters.JSON
import grails.plugin.springsecurity.annotation.Secured
import org.codehaus.groovy.grails.web.json.JSONArray
import org.codehaus.groovy.grails.web.json.JSONObject

@Secured(["ROLE_ADMIN", "ROLE_USER"])
class DashboardController {

    def index() {

        def tours = Tour.list()
        def finalizados = Tour.findAllByFechaFinIsNotNull().size()
        if(finalizados == null)
            finalizados = 0
        def inconclusos = UsuarioTour.findAllByEstado("inconcluso").size()
        if(inconclusos == null)
            inconclusos = 0
        def recorridos = UsuarioTour.findAllByEstado("finalizado").size()
        if(recorridos == null)
            recorridos = 0

        JSONObject jsonObject = new JSONObject()
        JSONArray data = new JSONArray()
        jsonObject.put('element', 'tours-chart')

        tours.each{
            JSONObject row = new JSONObject()
            row.put('y', it.nombreTour)
            row.put('a', UsuarioTour.findAllByTourAndEstado(it, "finalizado").size())
            row.put('b', UsuarioTour.findAllByTourAndEstado(it, "inconcluso").size())
            data.add(row)
        }
        JSONArray labels = new JSONArray()
        labels.add('Recorridos')
        labels.add('Inconclusos')
        JSONArray ykeys = new JSONArray()
        ykeys.add('a')
        ykeys.add('b')
        jsonObject.put('data', data)
        jsonObject.put('xkey', 'y')
        jsonObject.put('ykeys', ykeys)
        jsonObject.put('labels', labels)


        [tours: tours, finalizados: finalizados, recorridos: recorridos, inconclusos: inconclusos, tour_chart: jsonObject ]
    }
}
