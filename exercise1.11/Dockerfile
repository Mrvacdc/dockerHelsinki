FROM openjdk:8

RUN apt-get update -y

RUN apt-get install dos2unix -y

WORKDIR /usr/scr/app

COPY . .

RUN find . type f -print0 | xargs -0 dos2unix

RUN ./mvnw package

EXPOSE 8080

CMD ["java", "-jar", "./target/docker-example-1.1.3.jar"]
