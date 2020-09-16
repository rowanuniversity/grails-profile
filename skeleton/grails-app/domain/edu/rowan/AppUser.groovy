package edu.rowan

import groovy.transform.EqualsAndHashCode
import groovy.transform.ToString
import grails.compiler.GrailsCompileStatic

@GrailsCompileStatic
@EqualsAndHashCode(includes='username')
@ToString(includes='username', includeNames=true, includePackage=false)
class AppUser implements Serializable {

    private static final long serialVersionUID = 1

    String username
    String password
    boolean enabled = true
    boolean accountExpired
    boolean accountLocked
    boolean passwordExpired
    String email
    String bannerId
    String displayName
    String firstName
    String lastName
    String middleName
    String prefFirstName
    String phoneNumber
    String ext
    String building

    Set<AppRole> getAuthorities() {
        (AppUserAppRole.findAllByAppUser(this) as List<AppUserAppRole>)*.appRole as Set<AppRole>
    }

    static constraints = {
        password nullable: false, blank: false, password: true
        username nullable: false, blank: false, unique: true
        email nullable: true
        bannerId nullable: true
        displayName nullable: true
        firstName nullable: true
        lastName nullable: true
        middleName nullable: true
        prefFirstName nullable: true
        phoneNumber nullable: true
        ext nullable: true
        building nullable: true
    }

    def beforeInsert() {
        return false
    }

    static mapping = {
        cache usage: "read-only"
        table name: "app_user", schema: "webappmgr"
	    password column: '`password`'
    }
}
