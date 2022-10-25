FROM openjdk:11
RUN mkdir /app
COPY target/demo-1.0-SNAPSHOT.jar /app
WORKDIR /app
CMD java -jar demo-1.0-SNAPSHOT.jar
