package sncpucmm

class Ubicacion {

    Integer cantidadDePlantas
    String nombre
    String abreviacion

    static constraints = {
        abreviacion nullable: true
    }
}