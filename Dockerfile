# Container image that runs your code
FROM secureapi/sailor:v0.0.5-pre

# Copies your code file from your action repository to the filesystem path `/` of the container
ADD entrypoint.sh /entrypoint.sh
RUN chown sailor:sailor entrypoint.sh
RUN chmod a+x /entrypoint.sh

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]
