FROM openjdk:18
WORKDIR /main
COPY . /main/
RUN javac Main.java
ENTRYPOINT [ "java", "Main" ]
