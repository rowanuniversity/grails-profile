FROM openjdk:8
LABEL maintainer="coltri@rowan.edu"

ARG GRAILS_VERSION=3.3.11

RUN apt-get update && apt-get install -y \
    dos2unix \
    tzdata \
    locales

# Generate a locale file
RUN sed -i -e 's/# en_US.UTF-8 UTF-8/en_US.UTF-8 UTF-8/' /etc/locale.gen && \
    locale-gen

# Env variables for locale
ENV LC_ALL en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en

# Install Grails
WORKDIR /usr/lib/jvm

ADD https://github.com/grails/grails-core/releases/download/v$GRAILS_VERSION/grails-$GRAILS_VERSION.zip /usr/lib/jvm/grails-$GRAILS_VERSION.zip
RUN unzip grails-$GRAILS_VERSION.zip && \
    rm -rf grails-$GRAILS_VERSION.zip && \
    ln -s grails-$GRAILS_VERSION grails

# Setup Grails path.
ENV GRAILS_HOME /usr/lib/jvm/grails
ENV PATH $GRAILS_HOME/bin:$PATH

# In a temp directory (as /app is mapped to the host machine)
# Copy over the deploy script during the build process.
# Run the build-deploy script to perform the remaining tasks
# inside the newly build container.
ADD ./docker-entrypoint.sh /tmp
RUN chmod +x /tmp/docker-entrypoint.sh && \
    dos2unix /tmp/docker-entrypoint.sh

# Set Default Behavior
ENTRYPOINT ["/tmp/docker-entrypoint.sh"]