FROM eclipse-temurin:11
WORKDIR .
COPY ./target/*.jar package.jar
CMD ["java", "-jar", "package.jar"]