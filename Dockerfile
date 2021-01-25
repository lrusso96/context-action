# Container image to run the code
FROM minidocks/context:latest

# Code file to execute when the docker container starts up
COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]