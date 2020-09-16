package rowan
import grails.plugin.springsecurity.annotation.Secured

class TestController {
def springSecurityService

    // This function is secured with general authenticaton
    // ALWAYS INCLUDE THESE WHERE NECESSARY
    @Secured('IS_AUTHENTICATED_FULLY')
    def index() {
        def user = springSecurityService.currentUser
        def roles = springSecurityService.getPrincipal().getAuthorities()
        [user: user, roles: roles]
    }

    // This function is unsecured
    // NOTE this is the default, please always include annotations.
    def unsecured(){

    }
}
