# Dockerfile Explanation
A Dockerfile is a script that contains instructions to build a Docker image. The Docker image is a lightweight, stand-alone, executable package that includes everything needed to run a piece of software, including the code, a runtime, libraries, environment variables, and config files.

## The most common commands in a Dockerfile are:

FROM: Specifies the base image to use for building the new image.

RUN: Executes commands in a shell to build the image.

COPY: Copies files or directories from the host file system to the image file system.

WORKDIR: Sets the working directory for subsequent commands.

EXPOSE: Specifies the network ports that the container listens on.

ENV: Sets environment variables for the container.

CMD: Specifies the default command to run when the container is started.

ENTRYPOINT: Specifies the command to run when the container is started, with arguments passed as parameters.

USER: Sets the user name or UID to run subsequent commands in the image.

LABEL: Adds metadata to the image.