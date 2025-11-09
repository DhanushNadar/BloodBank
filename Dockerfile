# FROM eclipse-temurin:17-jdk-alpine

# WORKDIR /app

# COPY target/demo-0.0.1-SNAPSHOT.jar app.jar

# ENV TZ=Asia/Kolkata

# EXPOSE 8080

# ENTRYPOINT ["java", "-Duser.timezone=Asia/Kolkata", "-jar", "app.jar"]


FROM eclipse-temurin:17-jdk-alpine AS builder

WORKDIR /app

COPY mvnw .
COPY .mvn .mvn
COPY pom.xml .

RUN ./mvnw dependency:go-offline -B

COPY src src

RUN ./mvnw clean package -DskipTests


FROM eclipse-temurin:17-jdk-alpine

WORKDIR /app

ENV TZ=Asia/Kolkata

COPY --from=builder /app/target/*.jar app.jar

EXPOSE 8080

ENV PORT=8080
ENV JAVA_OPTS="-Dserver.port=${PORT} -Duser.timezone=Asia/Kolkata"

ENTRYPOINT ["sh", "-c", "java $JAVA_OPTS -jar app.jar"]
