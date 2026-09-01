FROM eclipse-temurin:17-jre
WORKDIR /opt/Lavalink

# Descarregar o Lavalink de forma segura
RUN curl -sLO https://github.com/lavalink-devs/Lavalink/releases/download/v4.0.5/Lavalink.jar

# Copiar a configuração
COPY application.yml application.yml

EXPOSE 2333
CMD ["java", "-jar", "Lavalink.jar"]