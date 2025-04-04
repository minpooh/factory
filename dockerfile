# OpenJDK 21 이미지를 사용 (Java 21 환경)
FROM openjdk:21-oracle

# 작업 디렉토리 설정
WORKDIR /app

# Gradle 빌드 후 생성된 JAR 파일을 컨테이너로 복사
COPY ./build/libs/factory-0.0.1-SNAPSHOT.jar /app/factory.jar

# JAR 파일을 실행할 명령어
ENTRYPOINT ["java", "-jar", "/app/factory.jar"]

