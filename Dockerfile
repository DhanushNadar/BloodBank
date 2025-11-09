FROM eclipse-temurin:17-jdk-alpine

WORKDIR /app

COPY target/demo-0.0.1-SNAPSHOT.jar app.jar

ENV TZ=Asia/Kolkata

EXPOSE 8080

ENTRYPOINT ["java", "-Duser.timezone=Asia/Kolkata", "-jar", "app.jar"]
