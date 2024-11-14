# Use the official Maven image with JDK 11 as the base image
FROM maven:3.8.6-openjdk-11

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy all project files to the working directory
COPY . .

# Run Maven to build the package
#RUN mvn clean package

# Entry point to keep the container running (useful for debugging)
CMD ["tail", "-f", "/dev/null"]
