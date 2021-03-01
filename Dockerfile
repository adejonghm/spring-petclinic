FROM openjdk:8-jdk

COPY target/spring-petclinic-2.4.2.jar home/petclinic-website.jar

ENTRYPOINT ["java", "-jar", "home/petclinic-website.jar"]