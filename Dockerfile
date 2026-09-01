FROM eclipse-temurin:17-jre
WORKDIR /opt/Lavalink
RUN curl -L https://github.com/lavalink-devs/Lavalink/releases/download/v4.0.5/Lavalink.jar -o Lavalink.jar
COPY application.yml application.yml
EXPOSE 2333
CMD ["java", "-jar", "Lavalink.jar"]