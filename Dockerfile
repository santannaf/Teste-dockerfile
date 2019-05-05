FROM alpine/git as git
WORKDIR /home/app
RUN git clone https://github.com/santannaf/Teste-dockerfile.git

FROM maven:3.6.0-jdk-8-slim AS build
WORKDIR /home/app
COPY --from=git /home/app/Teste-dockerfile /home/app
COPY --from=git /home/app/Teste-dockerfile/pom.xml /home/app
RUN mvn -f /home/app/pom.xml clean package

FROM openjdk:8-jre-slim
WORKDIR /home/app
COPY --from=build /home/app/target/Docker-0.0.1.jar /home/app
EXPOSE 8080
ENTRYPOINT ["java","-jar","Docker-0.0.1.jar"]