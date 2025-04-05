# 1단계: gradle로 jar 빌드
FROM gradle:8.6.0-jdk21 AS build
COPY --chown=gradle:gradle . /home/gradle/project
WORKDIR /home/gradle/project
RUN gradle build -x test

# 2단계: 실제 실행 환경
FROM openjdk:21-oracle
WORKDIR /app
COPY --from=build /home/gradle/project/build/libs/app.jar /app/factory.jar
EXPOSE 8080
CMD ["java", "-jar", "/app/factory.jar"]