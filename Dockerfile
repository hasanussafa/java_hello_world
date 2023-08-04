FROM openjdk:11
COPY . /usr/src/myapp
WORKDIR Main.java
RUN javac Main.java
CMD ["java", "Main"]
