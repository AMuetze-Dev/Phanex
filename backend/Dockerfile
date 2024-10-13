FROM eclipse-temurin:23-jdk AS build
WORKDIR /app

RUN apt-get update && apt-get install -y maven

COPY pom.xml .
RUN mvn dependency:go-offline
COPY src ./src
RUN mvn package

RUN ls -g target

FROM eclipse-temurin:23-jdk
WORKDIR /app
COPY --from=build /app/target/Phanex-backend.jar ./backend.jar
CMD ["java","-jar","backend.jar"]