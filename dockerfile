FROM openjdk:21-oracle
WORKDIR /app
COPY ./build/libs/factory-0.0.1-SNAPSHOT.jar /app/factory.jar
EXPOSE 8080
CMD ["java", "-jar", "/app/factory.jar"]
