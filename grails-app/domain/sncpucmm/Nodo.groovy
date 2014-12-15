package sncpucmm

class Nodo {

    Ubicacion ubicacion
    Integer edificio
    String nombre
    boolean activo

    static constraints = {
        ubicacion nullable: true
        edificio nullable: true
    }
}