FROM eclipse-temurin:23-jdk AS build
WORKDIR /app
COPY pom.xml .
RUN mvn clean install
COPY src ./src
RUN mvn package

FROM eclipse-temurin:23-jdk
WORKDIR /app
COPY --from=build /app/target/Phanex-backend.jar ./backend.jar
CMD ["java","-jar","backend.jar"]