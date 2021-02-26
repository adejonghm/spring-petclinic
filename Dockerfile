FROM openjdk:8-jdk-alpine

COPY target/spring-petclinic-2.4.2.jar home/petclinic-website.jar

ENTRYPOINT ["java", "-jar", "home/petclinic-website.jar"]