#Setting the Base Image
FROM eclipse-temurin:17-jdk-alpine


#Setting the working directory for our app
WORKDIR /app

#Copying our already clone source code and other required files to the working directory
COPY src/Main.java /app/Main.java
COPY quotes.txt quotes.txt

#Above command is used to copy the code from your host to the container's working directory

#RUN is the command used in docker file to execute the shell commands
RUN javac Main.java

EXPOSE 8000

#Serve the app using CMD command
CMD ["java","Main"]


