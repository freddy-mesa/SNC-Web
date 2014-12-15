package sncpucmm

class UsuarioFacebook {

    Long facebookId
    String firstname
    String lastname
    String gender
    String email

    static constraints = {
        facebookId unique: true
        //email email: true
        email nullable: true
        firstname nullable: true
        lastname nullable: true
        gender nullable: true
    }
}
