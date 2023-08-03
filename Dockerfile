FROM openjdk
WORKDIR /main
COPY . /main/
RUN javac Main.java
ENTRYPOINT [ "java", "Main" ]
