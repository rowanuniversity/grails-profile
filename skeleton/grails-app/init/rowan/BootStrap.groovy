package rowan

class BootStrap {

    def init = { servletContext ->
        // Print out a better URL for dev
        if (System.getenv('APP_ENVIRONMENT') == "dev"){
            println "Actual URL for DEV: http://asa-dev:"+System.getenv('APP_PORT_NUMBER')
        }
    }
    def destroy = {
    }
}
