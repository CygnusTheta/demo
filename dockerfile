FROM openjdk:11
RUN mkdir /app
ADD target/demo-1.0-SNAPSHOT.jar /app
#COPY target/demo-1.0-SNAPSHOT.jar /app
RUN echo "$PWD"
RUN pwd
WORKDIR /app
CMD java -jar demo-1.0-SNAPSHOT.jar
