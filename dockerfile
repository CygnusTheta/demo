FROM maven:3 AS builder 
RUN mkdir -p /app/src
WORKDIR /app
COPY ./src ./src
COPY ./pom.xml .
RUN mvn package

FROM builder AS vulnscan
COPY --from=aquasec/trivy:latest /usr/local/bin/trivy /usr/local/bin/trivy
RUN trivy rootfs --no-progress /


FROM openjdk:11 AS runner
RUN mkdir /app
#ADD ./target/demo-1.0-SNAPSHOT.jar /app
#COPY target/demo-1.0-SNAPSHOT.jar /app
COPY --from=builder /app/target/demo-1.0-SNAPSHOT.jar /app
WORKDIR /app
CMD java -jar demo-1.0-SNAPSHOT.jar
