FROM openjdk:8-jdk-alpine
ENTRYPOINT ["java", "-jar", "usr/share/spring-petclinic-app.jar"]

ARG JAR_FILE=spring-petclinic-2.4.2.jar
ADD target/${JAR_FILE} usr/share/spring-petclinic-app.jar
