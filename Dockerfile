FROM eclipse-temurin:17-jre
WORKDIR /opt/Lavalink

# Usar um comando que garante o download correto do jar oficial
ADD https://github.com/lavalink-devs/Lavalink/releases/download/v4.0.5/Lavalink.jar Lavalink.jar

COPY application.yml application.yml

EXPOSE 2333
CMD ["java", "-jar", "Lavalink.jar"]