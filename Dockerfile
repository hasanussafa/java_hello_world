FROM openjdk
WORKDIR /app
COPY . /app/
RUN javac Main.javac
ENTRYPOINT [ "java", "Main" ]