# The first letter of the file must be capitalized 

# This has to be the first command of the dockerfile 
# Determine the base image 
FROM debian 

# Run commands in container 
RUN apt-get updatte && apt-get install apache2 && apt-get clean

# The command ADD throws a file from the host to the container 
ADD example.txt /directory/

# Entry point 
CMD ["sh", "-c", "echo", "$HOME"]

# Metadata (Version, manufacture, description, etc...)
LABEL Description = "Example"

# Copy files or directories
COPY example.txt /directory/

# Main proces (if the process ends the container will also be ended )
ENTRYPOINT ["/usr/bin/apache2ctl", "-D", "FOREGROUND"]

# Configure environment variables 
ENV ex = "example"

# Expose the container port 
EXPOSE 80

# User default
USER Felipe

# Root diroectory
WORKDIR /example

# Create a volume in the container 
VOLUME /diretorio

# To build the image type the following command:
# docker build -t frist_image:1.0 .
# You need to point the docker file directory after version
