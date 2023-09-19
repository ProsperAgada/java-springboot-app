FROM eclipse-temurin:17

WORKDIR  /app

COPY ./target/*.jar ./package.jar

EXPOSE 8080

CMD ["java", "-jar", "package.jar"]