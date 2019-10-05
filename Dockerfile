FROM openjdk:8-jre-stretch

ADD build/libs/simple-gradle-1.0-SNAPSHOT.jar /app/app.jar

ENTRYPOINT ["java", "-cp", "/app/app.jar", "Hello"]
