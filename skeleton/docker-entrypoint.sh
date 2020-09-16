#!/bin/bash
### docker-entrypoint.sh
### to be run as the ENTRYPOINT within a container

# Check APP_ENVIRONMENT
if [[ -z "$APP_ENVIRONMENT" ]]; then
   export APP_ENVIRONMENT=prod
fi
# Check APP_LOCALE
if [[ -z "$APP_LOCALE" ]]; then
   export APP_LOCALE=compiled
fi

cd /app

echo "Running Environment: '${APP_ENVIRONMENT}'' as: '$APP_LOCALE'"
if [ $APP_LOCALE == "interactive" ]; then
    /bin/bash gradlew clean
    grails $APP_ENVIRONMENT run-app
else
    /bin/bash gradlew clean
    grails $APP_ENVIRONMENT package
    cd build/libs
    java -Duser.country=US -Duser.language=en -jar ROOT.war
fi