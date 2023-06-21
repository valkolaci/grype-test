FROM python:3.11-slim
RUN useradd -ms /bin/bash webapp -u 1234 -d /home/webapp
COPY src/ /home/webapp/
RUN chown -R webapp:webapp /home/webapp/
USER 1234
WORKDIR /home/webapp/
ENTRYPOINT /home/webapp/script
CMD []
