FROM eclipse-temurin:21-jdk
WORKDIR /app
COPY . /app
RUN javac Helloworld.java
CMD ["java","Helloworld"]
