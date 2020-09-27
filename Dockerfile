# Container image that runs your code
FROM secureapi/sailor:v1.0.0
USER root
# Copies your code file from your action repository to the filesystem path `/` of the container
RUN apk add --no-cache ca-certificates
ADD entrypoint.sh /entrypoint.sh
RUN chmod a+x /entrypoint.sh
ENV SAILOR_GH_ACTION yes
# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]
