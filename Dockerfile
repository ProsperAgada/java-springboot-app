#FROM eclipse-temurin:11-jdk-alpine AS builder
#RUN mkdir /app
#WORKDIR /app
#COPY ./pom.xml /app
#COPY ./src /app/src
#RUN mvn clean install package
#RUN mvn install -Dmaven.test.skip=true

FROM openjdk:8-jre-alpine
#COPY --from=builder /app/target/*.jar java-maven-app.jar
WORKDIR .
COPY ./target/*.jar java-maven-app.jar
EXPOSE 8080
CMD ["java", "-jar", "java-maven-app.jar" ]