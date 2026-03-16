FROM openjdk:17

WORKDIR /app

COPY src/HelloWorld.java .

RUN javac HelloWorld.java

CMD ["java", "HelloWorld"]
