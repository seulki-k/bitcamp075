# 1. 베이스 이미지 설정
FROM openjdk:21-jdk

ARG JAR_FILE=app/build/libs/myapp.jar

# 2. 애플리케이션 JAR 파일을 컨테이너로 복사
# JAR 파일 이름을 지정하거나, 빌드 과정에서 매번 새로운 이름으로 빌드된다면 COPY 명령을 수정해 주세요.
COPY ${JAR_FILE}} myapp.jar

# 3. 포트 설정
# Spring Boot 애플리케이션은 기본적으로 8080 포트를 사용합니다.
#EXPOSE 8080

# 4. 애플리케이션 실행 명령
# 환경 변수나 설정 파일이 필요한 경우 추가할 수 있습니다.
ENTRYPOINT ["java", "-Dspring.profiles.active=prod","-jar", "myapp.jar"]