package sncpucmm

class Nodo {

    Ubicacion ubicacion
    Integer edificio
    String nombre
    boolean activo
    Integer planta

    static constraints = {
        ubicacion nullable: true
        edificio nullable: true
        planta nullable: true
    }
}