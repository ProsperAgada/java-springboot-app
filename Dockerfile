FROM maven:3.5.0-jdk-8-alpine AS builder
RUN mkdir /app
WORKDIR /app
COPY ./pom.xml /app
COPY ./src /app/src
RUN mvn clean install package

FROM openjdk:8-jre-alpine
COPY --from=builder /app/target/java-maven-app-1.1.0-SNAPSHOT.jar java-maven-app.jar
EXPOSE 8080
CMD ["java", "-jar", "java-maven-app.jar" ]