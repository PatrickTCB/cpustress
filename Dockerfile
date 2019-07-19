FROM python:latest

RUN mkdir /data
RUN apt-get update
RUN apt-get -y install stress
ENV RUNTIME="300s"
WORKDIR /data
ADD run.sh /data/run.sh
CMD ["bash", "run.sh"]