FROM eclipse-temurin:23-jdk AS build
WORKDIR /app

RUN apt-get update && apt-get install -y maven

COPY pom.xml .
RUN mvn dependency:go-offline
COPY src ./src
RUN mvn package

FROM eclipse-temurin:23-jdk
WORKDIR /app
COPY --from=build /app/target/*.jar ./backend.jar
CMD ["java","-jar","backend.jar"]