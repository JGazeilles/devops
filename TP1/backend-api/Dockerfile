FROM maven:3.9.9-amazoncorretto-21 AS devops-tp1-backend-api-build

ENV API_APP_HOME=/opt/devops-tp1-backend-api
WORKDIR $API_APP_HOME

COPY pom.xml .
COPY src ./src

RUN mvn package

FROM amazoncorretto:21

ENV API_APP_HOME=/opt/devops-tp1-backend-api
WORKDIR $API_APP_HOME

COPY --from=devops-tp1-backend-api-build $API_APP_HOME/target/*.jar $API_APP_HOME/devops-tp1-backend-api.jar

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "devops-tp1-backend-api.jar"]
