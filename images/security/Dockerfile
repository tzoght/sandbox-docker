FROM ubuntu:latest
RUN groupadd appuser
RUN useradd -r -u 1001 -g appuser appuser
USER appuser
ENTRYPOINT ["sleep", "infinity"]
