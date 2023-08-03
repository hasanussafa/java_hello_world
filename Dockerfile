FROM openjdk:20.0.1
WORKDIR /main
COPY . /main/
RUN javac Main.java
ENTRYPOINT [ "java", "Main" ]
