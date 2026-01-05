FROM alpine:latest

# This ARG is automatically populated by Docker Buildx
ARG TARGETARCH

EXPOSE 9436

COPY src/scripts/start.sh /app/
COPY src/dist/mikrotik-exporter_linux_${TARGETARCH} /app/mikrotik-exporter

RUN chmod 755 /app/*

ENTRYPOINT ["/app/start.sh"]
