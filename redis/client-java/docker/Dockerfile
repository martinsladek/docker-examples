FROM openjdk:8
#COPY . /usr/src/myapp
COPY jar /usr/src/myapp
COPY src /usr/src/myapp
WORKDIR /usr/src/myapp
RUN javac -cp /usr/src/myapp/jedis-3.6.1.jar:/usr/src/myapp/jar/jedis-3.6.1.jar Main.java
RUN jar cf Main.jar Main.class
CMD ["java", "-cp", "/usr/src/myapp/Main.jar:/usr/src/myapp/jedis-3.6.1.jar:/usr/src/myapp/slf4j-api-1.7.31.jar:/usr/src/myapp/slf4j-jdk14-1.7.31.jar:/usr/src/myapp/*.jar", "Main"]