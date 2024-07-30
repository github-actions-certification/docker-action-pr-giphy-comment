# Container image that runs your code
FROM alpine:3.10

# Install necessary packages
RUN apk update && \
    apk add --no-cach curl jq

# Copy your entrypoint script to the container file path
COPY ./test.sh /test.sh

# Make the script executable
RUN chmod +x /test.sh

# Verify the file was copied
RUN ls -l /test.sh

# Code file to execute when the docker container starts up ('entrypoint.sh')
ENTRYPOINT [ "/test.sh" ]