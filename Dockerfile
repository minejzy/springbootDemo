FROM 192.168.8.136/springbootproject/anapsix/alpine-java:latest
MAINTAINER www.cnblogs.com/minejzy
RUN rm -rf /tmp/*.jar
ADD ./target/helloworld-0.0.1-SNAPSHOT.jar /tmp/
EXPOSE 8083
ENTRYPOINT ["java", "-jar", "/tmp/helloworld-0.0.1-SNAPSHOT.jar"]
