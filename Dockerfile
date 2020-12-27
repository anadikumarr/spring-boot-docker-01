FROM openjdk:8-jdk-alpine
RUN addgroup -S spring && adduser -S spring -G spring
USER spring:spring
COPY target/*.jar /app/lib
ENTRYPOINT ["java","-cp","app:app/lib/*","hello.Application"]
